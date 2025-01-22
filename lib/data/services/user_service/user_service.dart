import 'package:assessment_task/core/utils/constants/api.dart';
import 'package:assessment_task/core/utils/logging/logger.dart';
import 'package:dio/dio.dart';

class UserService {
  final Dio _dio = Dio();

  Future<Response> fetchUsers(int page, int results) async {
    try {
      final response = await _dio.get(TApi.availableToDate, queryParameters: {'page': page, 'results': results});
      return response;
    } on DioException catch (e) {
      TLoggerHelper.error('DIO Exception Caught MESSAGE - ${e.message}');
      TLoggerHelper.error('DIO Exception Caught ERROR - ${e.error}');
      TLoggerHelper.error('DIO Exception Caught RESPONSE- ${e.response}');
      TLoggerHelper.error('DIO Exception Caught TYPE - ${e.type}');
      rethrow;
    }
  }
}
