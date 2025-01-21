import 'package:assessment_task/features/personalization/domain/entities/user_entity/user_entity.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable {
  final List<UserEntity>? availableToDateUsers;
  final DioException? exception;

  const HomeState({this.availableToDateUsers, this.exception});

  @override
  List<Object> get props => [availableToDateUsers!, exception!];
}

class HomeLoading extends HomeState {
  const HomeLoading();
}

class HomeDone extends HomeState {
  const HomeDone(List<UserEntity> user) : super(availableToDateUsers: user);
}

class HomeError extends HomeState {
  const HomeError(DioException exception) : super(exception: exception);
}