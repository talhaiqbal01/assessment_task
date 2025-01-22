import 'package:flutter/material.dart';
import '../../../../../core/resources/data_state/data_state.dart';
import '../../../../../features/personalization/models/user_model/user_model.dart';
import '../../../../data/dating_repository/dating_repository.dart';

class HomeProvider extends ChangeNotifier {
  final DatingRepository _datingRepository;

  HomeProvider(this._datingRepository);

  bool _isLoading = false;
  bool _isMoreLoading = false;
  String? _errorMessage;
  List<UserModel>? _users;
  final _page = 1;

  bool get isLoading => _isLoading;
  bool get isMoreLoading => _isMoreLoading;
  String? get errorMessage => _errorMessage;
  List<UserModel>? get users => _users;
  int get page => _page;


  /// Fetches users from the repository and updates the state
  Future<void> fetchUsers({required int page, required int results}) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    final response = await _datingRepository.fetchUsers(page: page, results: results);
    if (response is DataSuccess<List<UserModel>>) {
      _users = response.data;
    } else if (response is DataFailed) {
      _errorMessage = response.exception?.message ?? "An error occurred";
    }

    _isLoading = false;
    notifyListeners();
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
}
