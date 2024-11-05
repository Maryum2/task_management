import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_app/data/errors/response_error.dart';

part 'base_status.freezed.dart';

@freezed
class BaseStatus<T extends Object?> with _$BaseStatus<T> {
  const BaseStatus._();

  const factory BaseStatus.initial({T? value}) = Initial<T>;
  const factory BaseStatus.loading({T? value}) = Loading<T>;
  const factory BaseStatus.lazyLoading({T? value}) = LazyLoading<T>;
  const factory BaseStatus.success({T? value}) = Success<T>;

  const factory BaseStatus.valid({T? value}) = Valid<T>;

  const factory BaseStatus.invalid({T? value}) = Invalid<T>;

  const factory BaseStatus.failure(ResponseError error) = Failure<T>;

  // Computed properties
  bool get isInitial => this is Initial<T>;
  bool get isLoading => this is Loading<T>;
  bool get isLazyLoading => this is LazyLoading<T>;
  bool get isSuccess => this is Success<T>;
  bool get isValid => this is Valid<T>;
  bool get isInvalid => this is Invalid<T>;
  bool get isFailure => this is Failure<T>;
}
