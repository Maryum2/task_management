// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_task_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddTaskRequest _$AddTaskRequestFromJson(Map<String, dynamic> json) {
  return _AddTaskRequest.fromJson(json);
}

/// @nodoc
mixin _$AddTaskRequest {
  String get todo => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  /// Serializes this AddTaskRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddTaskRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddTaskRequestCopyWith<AddTaskRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTaskRequestCopyWith<$Res> {
  factory $AddTaskRequestCopyWith(
          AddTaskRequest value, $Res Function(AddTaskRequest) then) =
      _$AddTaskRequestCopyWithImpl<$Res, AddTaskRequest>;
  @useResult
  $Res call({String todo, bool completed, int userId});
}

/// @nodoc
class _$AddTaskRequestCopyWithImpl<$Res, $Val extends AddTaskRequest>
    implements $AddTaskRequestCopyWith<$Res> {
  _$AddTaskRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddTaskRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
    Object? completed = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddTaskRequestImplCopyWith<$Res>
    implements $AddTaskRequestCopyWith<$Res> {
  factory _$$AddTaskRequestImplCopyWith(_$AddTaskRequestImpl value,
          $Res Function(_$AddTaskRequestImpl) then) =
      __$$AddTaskRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String todo, bool completed, int userId});
}

/// @nodoc
class __$$AddTaskRequestImplCopyWithImpl<$Res>
    extends _$AddTaskRequestCopyWithImpl<$Res, _$AddTaskRequestImpl>
    implements _$$AddTaskRequestImplCopyWith<$Res> {
  __$$AddTaskRequestImplCopyWithImpl(
      _$AddTaskRequestImpl _value, $Res Function(_$AddTaskRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddTaskRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
    Object? completed = null,
    Object? userId = null,
  }) {
    return _then(_$AddTaskRequestImpl(
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddTaskRequestImpl implements _AddTaskRequest {
  const _$AddTaskRequestImpl(
      {required this.todo, this.completed = false, required this.userId});

  factory _$AddTaskRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddTaskRequestImplFromJson(json);

  @override
  final String todo;
  @override
  @JsonKey()
  final bool completed;
  @override
  final int userId;

  @override
  String toString() {
    return 'AddTaskRequest(todo: $todo, completed: $completed, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskRequestImpl &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, todo, completed, userId);

  /// Create a copy of AddTaskRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskRequestImplCopyWith<_$AddTaskRequestImpl> get copyWith =>
      __$$AddTaskRequestImplCopyWithImpl<_$AddTaskRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddTaskRequestImplToJson(
      this,
    );
  }
}

abstract class _AddTaskRequest implements AddTaskRequest {
  const factory _AddTaskRequest(
      {required final String todo,
      final bool completed,
      required final int userId}) = _$AddTaskRequestImpl;

  factory _AddTaskRequest.fromJson(Map<String, dynamic> json) =
      _$AddTaskRequestImpl.fromJson;

  @override
  String get todo;
  @override
  bool get completed;
  @override
  int get userId;

  /// Create a copy of AddTaskRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTaskRequestImplCopyWith<_$AddTaskRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
