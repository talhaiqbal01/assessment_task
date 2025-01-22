import 'package:assessment_task/core/utils/constants/api.dart';
import 'package:dio/dio.dart';
import '../../../../../core/resources/data_state/data_state.dart';
import '../../core/utils/logging/logger.dart';
import '../../features/personalization/models/user_model/user_model.dart';
import '../services/user_service/user_service.dart';


/// Repository class containing dating-related logic
class DatingRepository {
  final UserService _userService;

  DatingRepository(this._userService);

  /*------------------------------------Variables------------------------------------*/


  /*------------------------------------Methods------------------------------------*/

  ///-- Action Functions

  ///-- Fetching Functions

  /// Method to fetch users available to date from [API] as a subtype of [UserModel]
  Future<DataState<List<UserModel>>> fetchUsers({required int page, required int results}) async {
    try {
      final response = await _userService.fetchUsers(page, results);
      final List<dynamic> data = response.data['results'] as List<dynamic>;
      final users = data.map((e) => UserModel.fromJson(e)).toList();
      return DataSuccess(users);
    } on DioException catch (e) {
      TLoggerHelper.error('DIO EXCEPTION - ${e.message}');
      return DataFailed(e);
    } catch (e) {
      return DataFailed(
        DioException(
          requestOptions: RequestOptions(path: '${TApi.availableToDate}?page=$page&results=$results'),
          type: DioExceptionType.unknown,
          error: e,
        ),
      );
    }
  }
}
