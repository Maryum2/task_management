// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_task_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteTaskResponse _$DeleteTaskResponseFromJson(Map<String, dynamic> json) {
  return _DeleteTaskResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteTaskResponse {
  TaskDto get data => throw _privateConstructorUsedError;

  /// Serializes this DeleteTaskResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteTaskResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteTaskResponseCopyWith<DeleteTaskResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteTaskResponseCopyWith<$Res> {
  factory $DeleteTaskResponseCopyWith(
          DeleteTaskResponse value, $Res Function(DeleteTaskResponse) then) =
      _$DeleteTaskResponseCopyWithImpl<$Res, DeleteTaskResponse>;
  @useResult
  $Res call({TaskDto data});

  $TaskDtoCopyWith<$Res> get data;
}

/// @nodoc
class _$DeleteTaskResponseCopyWithImpl<$Res, $Val extends DeleteTaskResponse>
    implements $DeleteTaskResponseCopyWith<$Res> {
  _$DeleteTaskResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteTaskResponse
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

  /// Create a copy of DeleteTaskResponse
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
abstract class _$$DeleteTaskResponseImplCopyWith<$Res>
    implements $DeleteTaskResponseCopyWith<$Res> {
  factory _$$DeleteTaskResponseImplCopyWith(_$DeleteTaskResponseImpl value,
          $Res Function(_$DeleteTaskResponseImpl) then) =
      __$$DeleteTaskResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskDto data});

  @override
  $TaskDtoCopyWith<$Res> get data;
}

/// @nodoc
class __$$DeleteTaskResponseImplCopyWithImpl<$Res>
    extends _$DeleteTaskResponseCopyWithImpl<$Res, _$DeleteTaskResponseImpl>
    implements _$$DeleteTaskResponseImplCopyWith<$Res> {
  __$$DeleteTaskResponseImplCopyWithImpl(_$DeleteTaskResponseImpl _value,
      $Res Function(_$DeleteTaskResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteTaskResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DeleteTaskResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TaskDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteTaskResponseImpl implements _DeleteTaskResponse {
  const _$DeleteTaskResponseImpl({required this.data});

  factory _$DeleteTaskResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteTaskResponseImplFromJson(json);

  @override
  final TaskDto data;

  @override
  String toString() {
    return 'DeleteTaskResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of DeleteTaskResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskResponseImplCopyWith<_$DeleteTaskResponseImpl> get copyWith =>
      __$$DeleteTaskResponseImplCopyWithImpl<_$DeleteTaskResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteTaskResponseImplToJson(
      this,
    );
  }
}

abstract class _DeleteTaskResponse implements DeleteTaskResponse {
  const factory _DeleteTaskResponse({required final TaskDto data}) =
      _$DeleteTaskResponseImpl;

  factory _DeleteTaskResponse.fromJson(Map<String, dynamic> json) =
      _$DeleteTaskResponseImpl.fromJson;

  @override
  TaskDto get data;

  /// Create a copy of DeleteTaskResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTaskResponseImplCopyWith<_$DeleteTaskResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
