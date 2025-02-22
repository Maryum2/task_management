// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_change_notifier_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthChangeNotifierState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logOutUser,
    required TResult Function(UserEntity user) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logOutUser,
    TResult? Function(UserEntity user)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logOutUser,
    TResult Function(UserEntity user)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogOutUser value) logOutUser,
    required TResult Function(Login value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogOutUser value)? logOutUser,
    TResult? Function(Login value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogOutUser value)? logOutUser,
    TResult Function(Login value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthChangeNotifierStateCopyWith<$Res> {
  factory $AuthChangeNotifierStateCopyWith(AuthChangeNotifierState value,
          $Res Function(AuthChangeNotifierState) then) =
      _$AuthChangeNotifierStateCopyWithImpl<$Res, AuthChangeNotifierState>;
}

/// @nodoc
class _$AuthChangeNotifierStateCopyWithImpl<$Res,
        $Val extends AuthChangeNotifierState>
    implements $AuthChangeNotifierStateCopyWith<$Res> {
  _$AuthChangeNotifierStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthChangeNotifierState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LogOutUserImplCopyWith<$Res> {
  factory _$$LogOutUserImplCopyWith(
          _$LogOutUserImpl value, $Res Function(_$LogOutUserImpl) then) =
      __$$LogOutUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutUserImplCopyWithImpl<$Res>
    extends _$AuthChangeNotifierStateCopyWithImpl<$Res, _$LogOutUserImpl>
    implements _$$LogOutUserImplCopyWith<$Res> {
  __$$LogOutUserImplCopyWithImpl(
      _$LogOutUserImpl _value, $Res Function(_$LogOutUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthChangeNotifierState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogOutUserImpl implements LogOutUser {
  const _$LogOutUserImpl();

  @override
  String toString() {
    return 'AuthChangeNotifierState.logOutUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logOutUser,
    required TResult Function(UserEntity user) login,
  }) {
    return logOutUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logOutUser,
    TResult? Function(UserEntity user)? login,
  }) {
    return logOutUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logOutUser,
    TResult Function(UserEntity user)? login,
    required TResult orElse(),
  }) {
    if (logOutUser != null) {
      return logOutUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogOutUser value) logOutUser,
    required TResult Function(Login value) login,
  }) {
    return logOutUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogOutUser value)? logOutUser,
    TResult? Function(Login value)? login,
  }) {
    return logOutUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogOutUser value)? logOutUser,
    TResult Function(Login value)? login,
    required TResult orElse(),
  }) {
    if (logOutUser != null) {
      return logOutUser(this);
    }
    return orElse();
  }
}

abstract class LogOutUser implements AuthChangeNotifierState {
  const factory LogOutUser() = _$LogOutUserImpl;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user});

  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthChangeNotifierStateCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthChangeNotifierState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoginImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }

  /// Create a copy of AuthChangeNotifierState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$LoginImpl implements Login {
  const _$LoginImpl(this.user);

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'AuthChangeNotifierState.login(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthChangeNotifierState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logOutUser,
    required TResult Function(UserEntity user) login,
  }) {
    return login(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logOutUser,
    TResult? Function(UserEntity user)? login,
  }) {
    return login?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logOutUser,
    TResult Function(UserEntity user)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogOutUser value) logOutUser,
    required TResult Function(Login value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogOutUser value)? logOutUser,
    TResult? Function(Login value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogOutUser value)? logOutUser,
    TResult Function(Login value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class Login implements AuthChangeNotifierState {
  const factory Login(final UserEntity user) = _$LoginImpl;

  UserEntity get user;

  /// Create a copy of AuthChangeNotifierState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
