import 'package:assessment_task/features/personalization/domain/repositories/dating_repository/dating_repository.dart';
import 'package:dio/dio.dart';
import '../../../../../core/resources/data_state/data_state.dart';
import '../../../../../core/utils/logging/logger.dart';
import '../../models/user_model/user_model.dart';

/// Repository implementation containing business logic for user-related methods
class DatingRepositoryImpl implements DatingRepository {

  /*------------------------------------Variables------------------------------------*/

  /*------------------------------------Methods------------------------------------*/

  @override
  Future<DataState<UserModel>> fetchAvailableToDateFromServer() async {
    try {
      return DataSuccess(UserModel());
    } on DioException catch (e) {
      TLoggerHelper.error('DIO EXCEPTION (Fetching Available To Date Users) - $e');
      return DataFailed(e);
    }
  }
}
