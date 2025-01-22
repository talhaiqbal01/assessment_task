import 'package:assessment_task/core/models/geo_point/geo_point.dart';
import 'package:assessment_task/core/utils/location/location_service.dart';
import 'package:assessment_task/core/utils/logging/logger.dart';
import 'package:assessment_task/features/personalization/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../core/resources/data_state/data_state.dart';
import '../../../../../features/personalization/models/user_model/user_model.dart';
import '../../../../data/dating_repository/dating_repository.dart';

/// Provider for [HomeScreen]
class HomeProvider extends ChangeNotifier {
  final DatingRepository _datingRepository;

  HomeProvider(this._datingRepository);

  bool _isLoading = false;
  bool _isMoreLoading = false;
  String? _errorMessage;
  List<UserModel>? _users;
  final _page = 1;
  GeoPoint _currentUserGeoPoint = GeoPoint.empty();

  bool get isLoading => _isLoading;
  bool get isMoreLoading => _isMoreLoading;
  String? get errorMessage => _errorMessage;
  List<UserModel>? get users => _users;
  int get page => _page;
  GeoPoint get currentUserGeoPoint => _currentUserGeoPoint;


  /// Fetches users from the repository and updates the state
  Future<void> fetchUsers() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      _currentUserGeoPoint = await TLocationService.getUserLocationInGeoPoint();
      final response = await _datingRepository.fetchUsers(page: 1, results: 10);
      if (response is DataSuccess<List<UserModel>>) {
        _users = response.data;
      } else if (response is DataFailed) {
        _errorMessage = response.exception?.message ?? "An error occurred";
      }
    } catch (e) {
      TLoggerHelper.error('Error - $e');
      _errorMessage = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Fetches more users from the repository and updates the state
  Future<void> fetchMoreUsers({required int page, required int results}) async {
    _isMoreLoading = true;
    _errorMessage = null;
    notifyListeners();

    final response = await _datingRepository.fetchUsers(page: page, results: results);
    if (response is DataSuccess<List<UserModel>>) {
      _users?.addAll(response.data!);
    } else if (response is DataFailed) {
      _errorMessage = response.exception?.message ?? "An error occurred";
    }

    _isMoreLoading = false;
    notifyListeners();
  }

  /// Method to open messages with given phone number
  Future<void> sendMessage(String phoneNumber) async {
    final Uri smsUri = Uri(scheme: 'sms', path: phoneNumber);

    if (await canLaunchUrl(smsUri)) {
      await launchUrl(smsUri);
    } else {
      throw 'Could not launch $smsUri';
    }
  }

  /// Method to open call with given phone number
  Future<void> callUser(String phoneNumber) async {
    final Uri phoneUri = Uri(scheme: 'tel', path: phoneNumber);

    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    } else {
      throw 'Could not launch $phoneUri';
    }
  }

  String calculateDistanceBtwUsers(GeoPoint userLocationGeoPoint) => TLocationService.calculateDistanceBtwGeoPointsInKm(_currentUserGeoPoint, userLocationGeoPoint);
}
