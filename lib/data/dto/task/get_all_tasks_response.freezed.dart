// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_tasks_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllTasksResponse _$GetAllTasksResponseFromJson(Map<String, dynamic> json) {
  return _GetAllTasksResponse.fromJson(json);
}

/// @nodoc
mixin _$GetAllTasksResponse {
  int get total => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  @JsonKey(name: 'todos')
  List<TaskDto> get data => throw _privateConstructorUsedError;

  /// Serializes this GetAllTasksResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetAllTasksResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAllTasksResponseCopyWith<GetAllTasksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllTasksResponseCopyWith<$Res> {
  factory $GetAllTasksResponseCopyWith(
          GetAllTasksResponse value, $Res Function(GetAllTasksResponse) then) =
      _$GetAllTasksResponseCopyWithImpl<$Res, GetAllTasksResponse>;
  @useResult
  $Res call(
      {int total,
      int skip,
      int limit,
      @JsonKey(name: 'todos') List<TaskDto> data});
}

/// @nodoc
class _$GetAllTasksResponseCopyWithImpl<$Res, $Val extends GetAllTasksResponse>
    implements $GetAllTasksResponseCopyWith<$Res> {
  _$GetAllTasksResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAllTasksResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? skip = null,
    Object? limit = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TaskDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllTasksResponseImplCopyWith<$Res>
    implements $GetAllTasksResponseCopyWith<$Res> {
  factory _$$GetAllTasksResponseImplCopyWith(_$GetAllTasksResponseImpl value,
          $Res Function(_$GetAllTasksResponseImpl) then) =
      __$$GetAllTasksResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total,
      int skip,
      int limit,
      @JsonKey(name: 'todos') List<TaskDto> data});
}

/// @nodoc
class __$$GetAllTasksResponseImplCopyWithImpl<$Res>
    extends _$GetAllTasksResponseCopyWithImpl<$Res, _$GetAllTasksResponseImpl>
    implements _$$GetAllTasksResponseImplCopyWith<$Res> {
  __$$GetAllTasksResponseImplCopyWithImpl(_$GetAllTasksResponseImpl _value,
      $Res Function(_$GetAllTasksResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAllTasksResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? skip = null,
    Object? limit = null,
    Object? data = null,
  }) {
    return _then(_$GetAllTasksResponseImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TaskDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllTasksResponseImpl implements _GetAllTasksResponse {
  const _$GetAllTasksResponseImpl(
      {required this.total,
      required this.skip,
      required this.limit,
      @JsonKey(name: 'todos') required final List<TaskDto> data})
      : _data = data;

  factory _$GetAllTasksResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAllTasksResponseImplFromJson(json);

  @override
  final int total;
  @override
  final int skip;
  @override
  final int limit;
  final List<TaskDto> _data;
  @override
  @JsonKey(name: 'todos')
  List<TaskDto> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GetAllTasksResponse(total: $total, skip: $skip, limit: $limit, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllTasksResponseImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, skip, limit,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of GetAllTasksResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllTasksResponseImplCopyWith<_$GetAllTasksResponseImpl> get copyWith =>
      __$$GetAllTasksResponseImplCopyWithImpl<_$GetAllTasksResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllTasksResponseImplToJson(
      this,
    );
  }
}

abstract class _GetAllTasksResponse implements GetAllTasksResponse {
  const factory _GetAllTasksResponse(
          {required final int total,
          required final int skip,
          required final int limit,
          @JsonKey(name: 'todos') required final List<TaskDto> data}) =
      _$GetAllTasksResponseImpl;

  factory _GetAllTasksResponse.fromJson(Map<String, dynamic> json) =
      _$GetAllTasksResponseImpl.fromJson;

  @override
  int get total;
  @override
  int get skip;
  @override
  int get limit;
  @override
  @JsonKey(name: 'todos')
  List<TaskDto> get data;

  /// Create a copy of GetAllTasksResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllTasksResponseImplCopyWith<_$GetAllTasksResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
