// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_task_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddTaskResponse _$AddTaskResponseFromJson(Map<String, dynamic> json) {
  return _AddTaskResponse.fromJson(json);
}

/// @nodoc
mixin _$AddTaskResponse {
  TaskDto get data => throw _privateConstructorUsedError;

  /// Serializes this AddTaskResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddTaskResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddTaskResponseCopyWith<AddTaskResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTaskResponseCopyWith<$Res> {
  factory $AddTaskResponseCopyWith(
          AddTaskResponse value, $Res Function(AddTaskResponse) then) =
      _$AddTaskResponseCopyWithImpl<$Res, AddTaskResponse>;
  @useResult
  $Res call({TaskDto data});

  $TaskDtoCopyWith<$Res> get data;
}

/// @nodoc
class _$AddTaskResponseCopyWithImpl<$Res, $Val extends AddTaskResponse>
    implements $AddTaskResponseCopyWith<$Res> {
  _$AddTaskResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddTaskResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TaskDto,
    ) as $Val);
  }

  /// Create a copy of AddTaskResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskDtoCopyWith<$Res> get data {
    return $TaskDtoCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddTaskResponseImplCopyWith<$Res>
    implements $AddTaskResponseCopyWith<$Res> {
  factory _$$AddTaskResponseImplCopyWith(_$AddTaskResponseImpl value,
          $Res Function(_$AddTaskResponseImpl) then) =
      __$$AddTaskResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskDto data});

  @override
  $TaskDtoCopyWith<$Res> get data;
}

/// @nodoc
class __$$AddTaskResponseImplCopyWithImpl<$Res>
    extends _$AddTaskResponseCopyWithImpl<$Res, _$AddTaskResponseImpl>
    implements _$$AddTaskResponseImplCopyWith<$Res> {
  __$$AddTaskResponseImplCopyWithImpl(
      _$AddTaskResponseImpl _value, $Res Function(_$AddTaskResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddTaskResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AddTaskResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TaskDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddTaskResponseImpl implements _AddTaskResponse {
  const _$AddTaskResponseImpl({required this.data});

  factory _$AddTaskResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddTaskResponseImplFromJson(json);

  @override
  final TaskDto data;

  @override
  String toString() {
    return 'AddTaskResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of AddTaskResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskResponseImplCopyWith<_$AddTaskResponseImpl> get copyWith =>
      __$$AddTaskResponseImplCopyWithImpl<_$AddTaskResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddTaskResponseImplToJson(
      this,
    );
  }
}

abstract class _AddTaskResponse implements AddTaskResponse {
  const factory _AddTaskResponse({required final TaskDto data}) =
      _$AddTaskResponseImpl;

  factory _AddTaskResponse.fromJson(Map<String, dynamic> json) =
      _$AddTaskResponseImpl.fromJson;

  @override
  TaskDto get data;

  /// Create a copy of AddTaskResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTaskResponseImplCopyWith<_$AddTaskResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
