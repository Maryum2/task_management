// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_task_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateTaskEntity {
  AllTasksItemEntity get allTasksItemEntity =>
      throw _privateConstructorUsedError;

  /// Create a copy of UpdateTaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateTaskEntityCopyWith<UpdateTaskEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskEntityCopyWith<$Res> {
  factory $UpdateTaskEntityCopyWith(
          UpdateTaskEntity value, $Res Function(UpdateTaskEntity) then) =
      _$UpdateTaskEntityCopyWithImpl<$Res, UpdateTaskEntity>;
  @useResult
  $Res call({AllTasksItemEntity allTasksItemEntity});

  $AllTasksItemEntityCopyWith<$Res> get allTasksItemEntity;
}

/// @nodoc
class _$UpdateTaskEntityCopyWithImpl<$Res, $Val extends UpdateTaskEntity>
    implements $UpdateTaskEntityCopyWith<$Res> {
  _$UpdateTaskEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateTaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allTasksItemEntity = null,
  }) {
    return _then(_value.copyWith(
      allTasksItemEntity: null == allTasksItemEntity
          ? _value.allTasksItemEntity
          : allTasksItemEntity // ignore: cast_nullable_to_non_nullable
              as AllTasksItemEntity,
    ) as $Val);
  }

  /// Create a copy of UpdateTaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AllTasksItemEntityCopyWith<$Res> get allTasksItemEntity {
    return $AllTasksItemEntityCopyWith<$Res>(_value.allTasksItemEntity,
        (value) {
      return _then(_value.copyWith(allTasksItemEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateTaskEntityImplCopyWith<$Res>
    implements $UpdateTaskEntityCopyWith<$Res> {
  factory _$$UpdateTaskEntityImplCopyWith(_$UpdateTaskEntityImpl value,
          $Res Function(_$UpdateTaskEntityImpl) then) =
      __$$UpdateTaskEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AllTasksItemEntity allTasksItemEntity});

  @override
  $AllTasksItemEntityCopyWith<$Res> get allTasksItemEntity;
}

/// @nodoc
class __$$UpdateTaskEntityImplCopyWithImpl<$Res>
    extends _$UpdateTaskEntityCopyWithImpl<$Res, _$UpdateTaskEntityImpl>
    implements _$$UpdateTaskEntityImplCopyWith<$Res> {
  __$$UpdateTaskEntityImplCopyWithImpl(_$UpdateTaskEntityImpl _value,
      $Res Function(_$UpdateTaskEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateTaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allTasksItemEntity = null,
  }) {
    return _then(_$UpdateTaskEntityImpl(
      allTasksItemEntity: null == allTasksItemEntity
          ? _value.allTasksItemEntity
          : allTasksItemEntity // ignore: cast_nullable_to_non_nullable
              as AllTasksItemEntity,
    ));
  }
}

/// @nodoc

class _$UpdateTaskEntityImpl implements _UpdateTaskEntity {
  const _$UpdateTaskEntityImpl({required this.allTasksItemEntity});

  @override
  final AllTasksItemEntity allTasksItemEntity;

  @override
  String toString() {
    return 'UpdateTaskEntity(allTasksItemEntity: $allTasksItemEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskEntityImpl &&
            (identical(other.allTasksItemEntity, allTasksItemEntity) ||
                other.allTasksItemEntity == allTasksItemEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, allTasksItemEntity);

  /// Create a copy of UpdateTaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskEntityImplCopyWith<_$UpdateTaskEntityImpl> get copyWith =>
      __$$UpdateTaskEntityImplCopyWithImpl<_$UpdateTaskEntityImpl>(
          this, _$identity);
}

abstract class _UpdateTaskEntity implements UpdateTaskEntity {
  const factory _UpdateTaskEntity(
          {required final AllTasksItemEntity allTasksItemEntity}) =
      _$UpdateTaskEntityImpl;

  @override
  AllTasksItemEntity get allTasksItemEntity;

  /// Create a copy of UpdateTaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTaskEntityImplCopyWith<_$UpdateTaskEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
