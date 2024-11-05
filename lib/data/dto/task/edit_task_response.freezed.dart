// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_task_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditTaskResponse _$EditTaskResponseFromJson(Map<String, dynamic> json) {
  return _EditTaskResponse.fromJson(json);
}

/// @nodoc
mixin _$EditTaskResponse {
  TaskDto get data => throw _privateConstructorUsedError;

  /// Serializes this EditTaskResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditTaskResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditTaskResponseCopyWith<EditTaskResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTaskResponseCopyWith<$Res> {
  factory $EditTaskResponseCopyWith(
          EditTaskResponse value, $Res Function(EditTaskResponse) then) =
      _$EditTaskResponseCopyWithImpl<$Res, EditTaskResponse>;
  @useResult
  $Res call({TaskDto data});

  $TaskDtoCopyWith<$Res> get data;
}

/// @nodoc
class _$EditTaskResponseCopyWithImpl<$Res, $Val extends EditTaskResponse>
    implements $EditTaskResponseCopyWith<$Res> {
  _$EditTaskResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditTaskResponse
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

  /// Create a copy of EditTaskResponse
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
abstract class _$$EditTaskResponseImplCopyWith<$Res>
    implements $EditTaskResponseCopyWith<$Res> {
  factory _$$EditTaskResponseImplCopyWith(_$EditTaskResponseImpl value,
          $Res Function(_$EditTaskResponseImpl) then) =
      __$$EditTaskResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskDto data});

  @override
  $TaskDtoCopyWith<$Res> get data;
}

/// @nodoc
class __$$EditTaskResponseImplCopyWithImpl<$Res>
    extends _$EditTaskResponseCopyWithImpl<$Res, _$EditTaskResponseImpl>
    implements _$$EditTaskResponseImplCopyWith<$Res> {
  __$$EditTaskResponseImplCopyWithImpl(_$EditTaskResponseImpl _value,
      $Res Function(_$EditTaskResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditTaskResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$EditTaskResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TaskDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditTaskResponseImpl implements _EditTaskResponse {
  const _$EditTaskResponseImpl({required this.data});

  factory _$EditTaskResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditTaskResponseImplFromJson(json);

  @override
  final TaskDto data;

  @override
  String toString() {
    return 'EditTaskResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTaskResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of EditTaskResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTaskResponseImplCopyWith<_$EditTaskResponseImpl> get copyWith =>
      __$$EditTaskResponseImplCopyWithImpl<_$EditTaskResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditTaskResponseImplToJson(
      this,
    );
  }
}

abstract class _EditTaskResponse implements EditTaskResponse {
  const factory _EditTaskResponse({required final TaskDto data}) =
      _$EditTaskResponseImpl;

  factory _EditTaskResponse.fromJson(Map<String, dynamic> json) =
      _$EditTaskResponseImpl.fromJson;

  @override
  TaskDto get data;

  /// Create a copy of EditTaskResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditTaskResponseImplCopyWith<_$EditTaskResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
