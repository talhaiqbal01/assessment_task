import 'package:dio/dio.dart';

/// Abstract base class representing the state of data, including success or various exceptions.
abstract class DataState<T> {
  final T? data;
  final DioException? exception;

  const DataState({this.data, this.exception});
}

/// Represents a successful data operation, holding the retrieved data.
class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

/// Represents a failed data operation, capturing [DioException] exception.
class DataFailed<T> extends DataState<T> {
  const DataFailed(DioException exception) : super(exception: exception);
}
