// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BaseStatus<T extends Object?> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? value) initial,
    required TResult Function(T? value) loading,
    required TResult Function(T? value) lazyLoading,
    required TResult Function(T? value) success,
    required TResult Function(T? value) valid,
    required TResult Function(T? value) invalid,
    required TResult Function(ResponseError<dynamic> error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? value)? initial,
    TResult? Function(T? value)? loading,
    TResult? Function(T? value)? lazyLoading,
    TResult? Function(T? value)? success,
    TResult? Function(T? value)? valid,
    TResult? Function(T? value)? invalid,
    TResult? Function(ResponseError<dynamic> error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? value)? initial,
    TResult Function(T? value)? loading,
    TResult Function(T? value)? lazyLoading,
    TResult Function(T? value)? success,
    TResult Function(T? value)? valid,
    TResult Function(T? value)? invalid,
    TResult Function(ResponseError<dynamic> error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseStatusCopyWith<T extends Object?, $Res> {
  factory $BaseStatusCopyWith(
          BaseStatus<T> value, $Res Function(BaseStatus<T>) then) =
      _$BaseStatusCopyWithImpl<T, $Res, BaseStatus<T>>;
}

/// @nodoc
class _$BaseStatusCopyWithImpl<T extends Object?, $Res,
    $Val extends BaseStatus<T>> implements $BaseStatusCopyWith<T, $Res> {
  _$BaseStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T extends Object?, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? value});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T extends Object?, $Res>
    extends _$BaseStatusCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$InitialImpl<T>(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$InitialImpl<T extends Object?> extends Initial<T> {
  const _$InitialImpl({this.value}) : super._();

  @override
  final T? value;

  @override
  String toString() {
    return 'BaseStatus<$T>.initial(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<T, _$InitialImpl<T>> get copyWith =>
      __$$InitialImplCopyWithImpl<T, _$InitialImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? value) initial,
    required TResult Function(T? value) loading,
    required TResult Function(T? value) lazyLoading,
    required TResult Function(T? value) success,
    required TResult Function(T? value) valid,
    required TResult Function(T? value) invalid,
    required TResult Function(ResponseError<dynamic> error) failure,
  }) {
    return initial(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? value)? initial,
    TResult? Function(T? value)? loading,
    TResult? Function(T? value)? lazyLoading,
    TResult? Function(T? value)? success,
    TResult? Function(T? value)? valid,
    TResult? Function(T? value)? invalid,
    TResult? Function(ResponseError<dynamic> error)? failure,
  }) {
    return initial?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? value)? initial,
    TResult Function(T? value)? loading,
    TResult Function(T? value)? lazyLoading,
    TResult Function(T? value)? success,
    TResult Function(T? value)? valid,
    TResult Function(T? value)? invalid,
    TResult Function(ResponseError<dynamic> error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial<T extends Object?> extends BaseStatus<T> {
  const factory Initial({final T? value}) = _$InitialImpl<T>;
  const Initial._() : super._();

  T? get value;

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<T, _$InitialImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T extends Object?, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T> value, $Res Function(_$LoadingImpl<T>) then) =
      __$$LoadingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? value});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T extends Object?, $Res>
    extends _$BaseStatusCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$LoadingImpl<T>(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$LoadingImpl<T extends Object?> extends Loading<T> {
  const _$LoadingImpl({this.value}) : super._();

  @override
  final T? value;

  @override
  String toString() {
    return 'BaseStatus<$T>.loading(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<T, _$LoadingImpl<T>> get copyWith =>
      __$$LoadingImplCopyWithImpl<T, _$LoadingImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? value) initial,
    required TResult Function(T? value) loading,
    required TResult Function(T? value) lazyLoading,
    required TResult Function(T? value) success,
    required TResult Function(T? value) valid,
    required TResult Function(T? value) invalid,
    required TResult Function(ResponseError<dynamic> error) failure,
  }) {
    return loading(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? value)? initial,
    TResult? Function(T? value)? loading,
    TResult? Function(T? value)? lazyLoading,
    TResult? Function(T? value)? success,
    TResult? Function(T? value)? valid,
    TResult? Function(T? value)? invalid,
    TResult? Function(ResponseError<dynamic> error)? failure,
  }) {
    return loading?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? value)? initial,
    TResult Function(T? value)? loading,
    TResult Function(T? value)? lazyLoading,
    TResult Function(T? value)? success,
    TResult Function(T? value)? valid,
    TResult Function(T? value)? invalid,
    TResult Function(ResponseError<dynamic> error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T extends Object?> extends BaseStatus<T> {
  const factory Loading({final T? value}) = _$LoadingImpl<T>;
  const Loading._() : super._();

  T? get value;

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<T, _$LoadingImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LazyLoadingImplCopyWith<T extends Object?, $Res> {
  factory _$$LazyLoadingImplCopyWith(_$LazyLoadingImpl<T> value,
          $Res Function(_$LazyLoadingImpl<T>) then) =
      __$$LazyLoadingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? value});
}

/// @nodoc
class __$$LazyLoadingImplCopyWithImpl<T extends Object?, $Res>
    extends _$BaseStatusCopyWithImpl<T, $Res, _$LazyLoadingImpl<T>>
    implements _$$LazyLoadingImplCopyWith<T, $Res> {
  __$$LazyLoadingImplCopyWithImpl(
      _$LazyLoadingImpl<T> _value, $Res Function(_$LazyLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$LazyLoadingImpl<T>(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$LazyLoadingImpl<T extends Object?> extends LazyLoading<T> {
  const _$LazyLoadingImpl({this.value}) : super._();

  @override
  final T? value;

  @override
  String toString() {
    return 'BaseStatus<$T>.lazyLoading(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LazyLoadingImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LazyLoadingImplCopyWith<T, _$LazyLoadingImpl<T>> get copyWith =>
      __$$LazyLoadingImplCopyWithImpl<T, _$LazyLoadingImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? value) initial,
    required TResult Function(T? value) loading,
    required TResult Function(T? value) lazyLoading,
    required TResult Function(T? value) success,
    required TResult Function(T? value) valid,
    required TResult Function(T? value) invalid,
    required TResult Function(ResponseError<dynamic> error) failure,
  }) {
    return lazyLoading(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? value)? initial,
    TResult? Function(T? value)? loading,
    TResult? Function(T? value)? lazyLoading,
    TResult? Function(T? value)? success,
    TResult? Function(T? value)? valid,
    TResult? Function(T? value)? invalid,
    TResult? Function(ResponseError<dynamic> error)? failure,
  }) {
    return lazyLoading?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? value)? initial,
    TResult Function(T? value)? loading,
    TResult Function(T? value)? lazyLoading,
    TResult Function(T? value)? success,
    TResult Function(T? value)? valid,
    TResult Function(T? value)? invalid,
    TResult Function(ResponseError<dynamic> error)? failure,
    required TResult orElse(),
  }) {
    if (lazyLoading != null) {
      return lazyLoading(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) {
    return lazyLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return lazyLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (lazyLoading != null) {
      return lazyLoading(this);
    }
    return orElse();
  }
}

abstract class LazyLoading<T extends Object?> extends BaseStatus<T> {
  const factory LazyLoading({final T? value}) = _$LazyLoadingImpl<T>;
  const LazyLoading._() : super._();

  T? get value;

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LazyLoadingImplCopyWith<T, _$LazyLoadingImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<T extends Object?, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<T> value, $Res Function(_$SuccessImpl<T>) then) =
      __$$SuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? value});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<T extends Object?, $Res>
    extends _$BaseStatusCopyWithImpl<T, $Res, _$SuccessImpl<T>>
    implements _$$SuccessImplCopyWith<T, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<T> _value, $Res Function(_$SuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$SuccessImpl<T>(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<T extends Object?> extends Success<T> {
  const _$SuccessImpl({this.value}) : super._();

  @override
  final T? value;

  @override
  String toString() {
    return 'BaseStatus<$T>.success(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      __$$SuccessImplCopyWithImpl<T, _$SuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? value) initial,
    required TResult Function(T? value) loading,
    required TResult Function(T? value) lazyLoading,
    required TResult Function(T? value) success,
    required TResult Function(T? value) valid,
    required TResult Function(T? value) invalid,
    required TResult Function(ResponseError<dynamic> error) failure,
  }) {
    return success(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? value)? initial,
    TResult? Function(T? value)? loading,
    TResult? Function(T? value)? lazyLoading,
    TResult? Function(T? value)? success,
    TResult? Function(T? value)? valid,
    TResult? Function(T? value)? invalid,
    TResult? Function(ResponseError<dynamic> error)? failure,
  }) {
    return success?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? value)? initial,
    TResult Function(T? value)? loading,
    TResult Function(T? value)? lazyLoading,
    TResult Function(T? value)? success,
    TResult Function(T? value)? valid,
    TResult Function(T? value)? invalid,
    TResult Function(ResponseError<dynamic> error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T extends Object?> extends BaseStatus<T> {
  const factory Success({final T? value}) = _$SuccessImpl<T>;
  const Success._() : super._();

  T? get value;

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidImplCopyWith<T extends Object?, $Res> {
  factory _$$ValidImplCopyWith(
          _$ValidImpl<T> value, $Res Function(_$ValidImpl<T>) then) =
      __$$ValidImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? value});
}

/// @nodoc
class __$$ValidImplCopyWithImpl<T extends Object?, $Res>
    extends _$BaseStatusCopyWithImpl<T, $Res, _$ValidImpl<T>>
    implements _$$ValidImplCopyWith<T, $Res> {
  __$$ValidImplCopyWithImpl(
      _$ValidImpl<T> _value, $Res Function(_$ValidImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$ValidImpl<T>(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$ValidImpl<T extends Object?> extends Valid<T> {
  const _$ValidImpl({this.value}) : super._();

  @override
  final T? value;

  @override
  String toString() {
    return 'BaseStatus<$T>.valid(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidImplCopyWith<T, _$ValidImpl<T>> get copyWith =>
      __$$ValidImplCopyWithImpl<T, _$ValidImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? value) initial,
    required TResult Function(T? value) loading,
    required TResult Function(T? value) lazyLoading,
    required TResult Function(T? value) success,
    required TResult Function(T? value) valid,
    required TResult Function(T? value) invalid,
    required TResult Function(ResponseError<dynamic> error) failure,
  }) {
    return valid(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? value)? initial,
    TResult? Function(T? value)? loading,
    TResult? Function(T? value)? lazyLoading,
    TResult? Function(T? value)? success,
    TResult? Function(T? value)? valid,
    TResult? Function(T? value)? invalid,
    TResult? Function(ResponseError<dynamic> error)? failure,
  }) {
    return valid?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? value)? initial,
    TResult Function(T? value)? loading,
    TResult Function(T? value)? lazyLoading,
    TResult Function(T? value)? success,
    TResult Function(T? value)? valid,
    TResult Function(T? value)? invalid,
    TResult Function(ResponseError<dynamic> error)? failure,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class Valid<T extends Object?> extends BaseStatus<T> {
  const factory Valid({final T? value}) = _$ValidImpl<T>;
  const Valid._() : super._();

  T? get value;

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidImplCopyWith<T, _$ValidImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidImplCopyWith<T extends Object?, $Res> {
  factory _$$InvalidImplCopyWith(
          _$InvalidImpl<T> value, $Res Function(_$InvalidImpl<T>) then) =
      __$$InvalidImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? value});
}

/// @nodoc
class __$$InvalidImplCopyWithImpl<T extends Object?, $Res>
    extends _$BaseStatusCopyWithImpl<T, $Res, _$InvalidImpl<T>>
    implements _$$InvalidImplCopyWith<T, $Res> {
  __$$InvalidImplCopyWithImpl(
      _$InvalidImpl<T> _value, $Res Function(_$InvalidImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$InvalidImpl<T>(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$InvalidImpl<T extends Object?> extends Invalid<T> {
  const _$InvalidImpl({this.value}) : super._();

  @override
  final T? value;

  @override
  String toString() {
    return 'BaseStatus<$T>.invalid(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidImplCopyWith<T, _$InvalidImpl<T>> get copyWith =>
      __$$InvalidImplCopyWithImpl<T, _$InvalidImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? value) initial,
    required TResult Function(T? value) loading,
    required TResult Function(T? value) lazyLoading,
    required TResult Function(T? value) success,
    required TResult Function(T? value) valid,
    required TResult Function(T? value) invalid,
    required TResult Function(ResponseError<dynamic> error) failure,
  }) {
    return invalid(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? value)? initial,
    TResult? Function(T? value)? loading,
    TResult? Function(T? value)? lazyLoading,
    TResult? Function(T? value)? success,
    TResult? Function(T? value)? valid,
    TResult? Function(T? value)? invalid,
    TResult? Function(ResponseError<dynamic> error)? failure,
  }) {
    return invalid?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? value)? initial,
    TResult Function(T? value)? loading,
    TResult Function(T? value)? lazyLoading,
    TResult Function(T? value)? success,
    TResult Function(T? value)? valid,
    TResult Function(T? value)? invalid,
    TResult Function(ResponseError<dynamic> error)? failure,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class Invalid<T extends Object?> extends BaseStatus<T> {
  const factory Invalid({final T? value}) = _$InvalidImpl<T>;
  const Invalid._() : super._();

  T? get value;

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidImplCopyWith<T, _$InvalidImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<T extends Object?, $Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl<T> value, $Res Function(_$FailureImpl<T>) then) =
      __$$FailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ResponseError<dynamic> error});

  $ResponseErrorCopyWith<dynamic, $Res> get error;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<T extends Object?, $Res>
    extends _$BaseStatusCopyWithImpl<T, $Res, _$FailureImpl<T>>
    implements _$$FailureImplCopyWith<T, $Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl<T> _value, $Res Function(_$FailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ResponseError<dynamic>,
    ));
  }

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseErrorCopyWith<dynamic, $Res> get error {
    return $ResponseErrorCopyWith<dynamic, $Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$FailureImpl<T extends Object?> extends Failure<T> {
  const _$FailureImpl(this.error) : super._();

  @override
  final ResponseError<dynamic> error;

  @override
  String toString() {
    return 'BaseStatus<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<T, _$FailureImpl<T>> get copyWith =>
      __$$FailureImplCopyWithImpl<T, _$FailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? value) initial,
    required TResult Function(T? value) loading,
    required TResult Function(T? value) lazyLoading,
    required TResult Function(T? value) success,
    required TResult Function(T? value) valid,
    required TResult Function(T? value) invalid,
    required TResult Function(ResponseError<dynamic> error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? value)? initial,
    TResult? Function(T? value)? loading,
    TResult? Function(T? value)? lazyLoading,
    TResult? Function(T? value)? success,
    TResult? Function(T? value)? valid,
    TResult? Function(T? value)? invalid,
    TResult? Function(ResponseError<dynamic> error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? value)? initial,
    TResult Function(T? value)? loading,
    TResult Function(T? value)? lazyLoading,
    TResult Function(T? value)? success,
    TResult Function(T? value)? valid,
    TResult Function(T? value)? invalid,
    TResult Function(ResponseError<dynamic> error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LazyLoading<T> value) lazyLoading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Valid<T> value) valid,
    required TResult Function(Invalid<T> value) invalid,
    required TResult Function(Failure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LazyLoading<T> value)? lazyLoading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Valid<T> value)? valid,
    TResult? Function(Invalid<T> value)? invalid,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LazyLoading<T> value)? lazyLoading,
    TResult Function(Success<T> value)? success,
    TResult Function(Valid<T> value)? valid,
    TResult Function(Invalid<T> value)? invalid,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure<T extends Object?> extends BaseStatus<T> {
  const factory Failure(final ResponseError<dynamic> error) = _$FailureImpl<T>;
  const Failure._() : super._();

  ResponseError<dynamic> get error;

  /// Create a copy of BaseStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<T, _$FailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
