// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserLoginResponse _$UserLoginResponseFromJson(Map<String, dynamic> json) {
  return _UserLoginResponse.fromJson(json);
}

/// @nodoc
mixin _$UserLoginResponse {
  UserDto get data => throw _privateConstructorUsedError;

  /// Serializes this UserLoginResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLoginResponseCopyWith<UserLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginResponseCopyWith<$Res> {
  factory $UserLoginResponseCopyWith(
          UserLoginResponse value, $Res Function(UserLoginResponse) then) =
      _$UserLoginResponseCopyWithImpl<$Res, UserLoginResponse>;
  @useResult
  $Res call({UserDto data});

  $UserDtoCopyWith<$Res> get data;
}

/// @nodoc
class _$UserLoginResponseCopyWithImpl<$Res, $Val extends UserLoginResponse>
    implements $UserLoginResponseCopyWith<$Res> {
  _$UserLoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLoginResponse
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
              as UserDto,
    ) as $Val);
  }

  /// Create a copy of UserLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get data {
    return $UserDtoCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserLoginResponseImplCopyWith<$Res>
    implements $UserLoginResponseCopyWith<$Res> {
  factory _$$UserLoginResponseImplCopyWith(_$UserLoginResponseImpl value,
          $Res Function(_$UserLoginResponseImpl) then) =
      __$$UserLoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserDto data});

  @override
  $UserDtoCopyWith<$Res> get data;
}

/// @nodoc
class __$$UserLoginResponseImplCopyWithImpl<$Res>
    extends _$UserLoginResponseCopyWithImpl<$Res, _$UserLoginResponseImpl>
    implements _$$UserLoginResponseImplCopyWith<$Res> {
  __$$UserLoginResponseImplCopyWithImpl(_$UserLoginResponseImpl _value,
      $Res Function(_$UserLoginResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$UserLoginResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLoginResponseImpl implements _UserLoginResponse {
  const _$UserLoginResponseImpl({required this.data});

  factory _$UserLoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLoginResponseImplFromJson(json);

  @override
  final UserDto data;

  @override
  String toString() {
    return 'UserLoginResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of UserLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginResponseImplCopyWith<_$UserLoginResponseImpl> get copyWith =>
      __$$UserLoginResponseImplCopyWithImpl<_$UserLoginResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLoginResponseImplToJson(
      this,
    );
  }
}

abstract class _UserLoginResponse implements UserLoginResponse {
  const factory _UserLoginResponse({required final UserDto data}) =
      _$UserLoginResponseImpl;

  factory _UserLoginResponse.fromJson(Map<String, dynamic> json) =
      _$UserLoginResponseImpl.fromJson;

  @override
  UserDto get data;

  /// Create a copy of UserLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLoginResponseImplCopyWith<_$UserLoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
