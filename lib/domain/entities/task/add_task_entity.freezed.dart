// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_task_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddTaskEntity {
  AllTasksItemEntity get allTasksItemEntity =>
      throw _privateConstructorUsedError;

  /// Create a copy of AddTaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddTaskEntityCopyWith<AddTaskEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTaskEntityCopyWith<$Res> {
  factory $AddTaskEntityCopyWith(
          AddTaskEntity value, $Res Function(AddTaskEntity) then) =
      _$AddTaskEntityCopyWithImpl<$Res, AddTaskEntity>;
  @useResult
  $Res call({AllTasksItemEntity allTasksItemEntity});

  $AllTasksItemEntityCopyWith<$Res> get allTasksItemEntity;
}

/// @nodoc
class _$AddTaskEntityCopyWithImpl<$Res, $Val extends AddTaskEntity>
    implements $AddTaskEntityCopyWith<$Res> {
  _$AddTaskEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddTaskEntity
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

  /// Create a copy of AddTaskEntity
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
abstract class _$$AddTaskEntityImplCopyWith<$Res>
    implements $AddTaskEntityCopyWith<$Res> {
  factory _$$AddTaskEntityImplCopyWith(
          _$AddTaskEntityImpl value, $Res Function(_$AddTaskEntityImpl) then) =
      __$$AddTaskEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AllTasksItemEntity allTasksItemEntity});

  @override
  $AllTasksItemEntityCopyWith<$Res> get allTasksItemEntity;
}

/// @nodoc
class __$$AddTaskEntityImplCopyWithImpl<$Res>
    extends _$AddTaskEntityCopyWithImpl<$Res, _$AddTaskEntityImpl>
    implements _$$AddTaskEntityImplCopyWith<$Res> {
  __$$AddTaskEntityImplCopyWithImpl(
      _$AddTaskEntityImpl _value, $Res Function(_$AddTaskEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddTaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allTasksItemEntity = null,
  }) {
    return _then(_$AddTaskEntityImpl(
      allTasksItemEntity: null == allTasksItemEntity
          ? _value.allTasksItemEntity
          : allTasksItemEntity // ignore: cast_nullable_to_non_nullable
              as AllTasksItemEntity,
    ));
  }
}

/// @nodoc

class _$AddTaskEntityImpl implements _AddTaskEntity {
  const _$AddTaskEntityImpl({required this.allTasksItemEntity});

  @override
  final AllTasksItemEntity allTasksItemEntity;

  @override
  String toString() {
    return 'AddTaskEntity(allTasksItemEntity: $allTasksItemEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskEntityImpl &&
            (identical(other.allTasksItemEntity, allTasksItemEntity) ||
                other.allTasksItemEntity == allTasksItemEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, allTasksItemEntity);

  /// Create a copy of AddTaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskEntityImplCopyWith<_$AddTaskEntityImpl> get copyWith =>
      __$$AddTaskEntityImplCopyWithImpl<_$AddTaskEntityImpl>(this, _$identity);
}

abstract class _AddTaskEntity implements AddTaskEntity {
  const factory _AddTaskEntity(
          {required final AllTasksItemEntity allTasksItemEntity}) =
      _$AddTaskEntityImpl;

  @override
  AllTasksItemEntity get allTasksItemEntity;

  /// Create a copy of AddTaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTaskEntityImplCopyWith<_$AddTaskEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
