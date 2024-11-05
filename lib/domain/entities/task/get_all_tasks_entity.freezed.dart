// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_tasks_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetAllTasksEntity {
  int? get total => throw _privateConstructorUsedError;
  int? get skip => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  List<AllTasksItemEntity>? get allTasksItemEntity =>
      throw _privateConstructorUsedError;

  /// Create a copy of GetAllTasksEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAllTasksEntityCopyWith<GetAllTasksEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllTasksEntityCopyWith<$Res> {
  factory $GetAllTasksEntityCopyWith(
          GetAllTasksEntity value, $Res Function(GetAllTasksEntity) then) =
      _$GetAllTasksEntityCopyWithImpl<$Res, GetAllTasksEntity>;
  @useResult
  $Res call(
      {int? total,
      int? skip,
      int? limit,
      List<AllTasksItemEntity>? allTasksItemEntity});
}

/// @nodoc
class _$GetAllTasksEntityCopyWithImpl<$Res, $Val extends GetAllTasksEntity>
    implements $GetAllTasksEntityCopyWith<$Res> {
  _$GetAllTasksEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAllTasksEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
    Object? allTasksItemEntity = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      allTasksItemEntity: freezed == allTasksItemEntity
          ? _value.allTasksItemEntity
          : allTasksItemEntity // ignore: cast_nullable_to_non_nullable
              as List<AllTasksItemEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllTasksEntityImplCopyWith<$Res>
    implements $GetAllTasksEntityCopyWith<$Res> {
  factory _$$GetAllTasksEntityImplCopyWith(_$GetAllTasksEntityImpl value,
          $Res Function(_$GetAllTasksEntityImpl) then) =
      __$$GetAllTasksEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? total,
      int? skip,
      int? limit,
      List<AllTasksItemEntity>? allTasksItemEntity});
}

/// @nodoc
class __$$GetAllTasksEntityImplCopyWithImpl<$Res>
    extends _$GetAllTasksEntityCopyWithImpl<$Res, _$GetAllTasksEntityImpl>
    implements _$$GetAllTasksEntityImplCopyWith<$Res> {
  __$$GetAllTasksEntityImplCopyWithImpl(_$GetAllTasksEntityImpl _value,
      $Res Function(_$GetAllTasksEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAllTasksEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
    Object? allTasksItemEntity = freezed,
  }) {
    return _then(_$GetAllTasksEntityImpl(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      allTasksItemEntity: freezed == allTasksItemEntity
          ? _value._allTasksItemEntity
          : allTasksItemEntity // ignore: cast_nullable_to_non_nullable
              as List<AllTasksItemEntity>?,
    ));
  }
}

/// @nodoc

class _$GetAllTasksEntityImpl implements _GetAllTasksEntity {
  const _$GetAllTasksEntityImpl(
      {this.total,
      this.skip,
      this.limit,
      required final List<AllTasksItemEntity>? allTasksItemEntity})
      : _allTasksItemEntity = allTasksItemEntity;

  @override
  final int? total;
  @override
  final int? skip;
  @override
  final int? limit;
  final List<AllTasksItemEntity>? _allTasksItemEntity;
  @override
  List<AllTasksItemEntity>? get allTasksItemEntity {
    final value = _allTasksItemEntity;
    if (value == null) return null;
    if (_allTasksItemEntity is EqualUnmodifiableListView)
      return _allTasksItemEntity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetAllTasksEntity(total: $total, skip: $skip, limit: $limit, allTasksItemEntity: $allTasksItemEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllTasksEntityImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            const DeepCollectionEquality()
                .equals(other._allTasksItemEntity, _allTasksItemEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, total, skip, limit,
      const DeepCollectionEquality().hash(_allTasksItemEntity));

  /// Create a copy of GetAllTasksEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllTasksEntityImplCopyWith<_$GetAllTasksEntityImpl> get copyWith =>
      __$$GetAllTasksEntityImplCopyWithImpl<_$GetAllTasksEntityImpl>(
          this, _$identity);
}

abstract class _GetAllTasksEntity implements GetAllTasksEntity {
  const factory _GetAllTasksEntity(
          {final int? total,
          final int? skip,
          final int? limit,
          required final List<AllTasksItemEntity>? allTasksItemEntity}) =
      _$GetAllTasksEntityImpl;

  @override
  int? get total;
  @override
  int? get skip;
  @override
  int? get limit;
  @override
  List<AllTasksItemEntity>? get allTasksItemEntity;

  /// Create a copy of GetAllTasksEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllTasksEntityImplCopyWith<_$GetAllTasksEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AllTasksItemEntity {
  int get id => throw _privateConstructorUsedError;
  String get todo => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  DateTime? get deletedOn => throw _privateConstructorUsedError;
  bool get isLocal => throw _privateConstructorUsedError;

  /// Create a copy of AllTasksItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllTasksItemEntityCopyWith<AllTasksItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllTasksItemEntityCopyWith<$Res> {
  factory $AllTasksItemEntityCopyWith(
          AllTasksItemEntity value, $Res Function(AllTasksItemEntity) then) =
      _$AllTasksItemEntityCopyWithImpl<$Res, AllTasksItemEntity>;
  @useResult
  $Res call(
      {int id,
      String todo,
      bool completed,
      int userId,
      bool isDeleted,
      DateTime? deletedOn,
      bool isLocal});
}

/// @nodoc
class _$AllTasksItemEntityCopyWithImpl<$Res, $Val extends AllTasksItemEntity>
    implements $AllTasksItemEntityCopyWith<$Res> {
  _$AllTasksItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllTasksItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? todo = null,
    Object? completed = null,
    Object? userId = null,
    Object? isDeleted = null,
    Object? deletedOn = freezed,
    Object? isLocal = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      deletedOn: freezed == deletedOn
          ? _value.deletedOn
          : deletedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isLocal: null == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllTasksItemEntityImplCopyWith<$Res>
    implements $AllTasksItemEntityCopyWith<$Res> {
  factory _$$AllTasksItemEntityImplCopyWith(_$AllTasksItemEntityImpl value,
          $Res Function(_$AllTasksItemEntityImpl) then) =
      __$$AllTasksItemEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String todo,
      bool completed,
      int userId,
      bool isDeleted,
      DateTime? deletedOn,
      bool isLocal});
}

/// @nodoc
class __$$AllTasksItemEntityImplCopyWithImpl<$Res>
    extends _$AllTasksItemEntityCopyWithImpl<$Res, _$AllTasksItemEntityImpl>
    implements _$$AllTasksItemEntityImplCopyWith<$Res> {
  __$$AllTasksItemEntityImplCopyWithImpl(_$AllTasksItemEntityImpl _value,
      $Res Function(_$AllTasksItemEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllTasksItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? todo = null,
    Object? completed = null,
    Object? userId = null,
    Object? isDeleted = null,
    Object? deletedOn = freezed,
    Object? isLocal = null,
  }) {
    return _then(_$AllTasksItemEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      deletedOn: freezed == deletedOn
          ? _value.deletedOn
          : deletedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isLocal: null == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AllTasksItemEntityImpl implements _AllTasksItemEntity {
  const _$AllTasksItemEntityImpl(
      {required this.id,
      required this.todo,
      required this.completed,
      required this.userId,
      this.isDeleted = false,
      this.deletedOn,
      this.isLocal = false});

  @override
  final int id;
  @override
  final String todo;
  @override
  final bool completed;
  @override
  final int userId;
  @override
  @JsonKey()
  final bool isDeleted;
  @override
  final DateTime? deletedOn;
  @override
  @JsonKey()
  final bool isLocal;

  @override
  String toString() {
    return 'AllTasksItemEntity(id: $id, todo: $todo, completed: $completed, userId: $userId, isDeleted: $isDeleted, deletedOn: $deletedOn, isLocal: $isLocal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllTasksItemEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.deletedOn, deletedOn) ||
                other.deletedOn == deletedOn) &&
            (identical(other.isLocal, isLocal) || other.isLocal == isLocal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, todo, completed, userId, isDeleted, deletedOn, isLocal);

  /// Create a copy of AllTasksItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllTasksItemEntityImplCopyWith<_$AllTasksItemEntityImpl> get copyWith =>
      __$$AllTasksItemEntityImplCopyWithImpl<_$AllTasksItemEntityImpl>(
          this, _$identity);
}

abstract class _AllTasksItemEntity implements AllTasksItemEntity {
  const factory _AllTasksItemEntity(
      {required final int id,
      required final String todo,
      required final bool completed,
      required final int userId,
      final bool isDeleted,
      final DateTime? deletedOn,
      final bool isLocal}) = _$AllTasksItemEntityImpl;

  @override
  int get id;
  @override
  String get todo;
  @override
  bool get completed;
  @override
  int get userId;
  @override
  bool get isDeleted;
  @override
  DateTime? get deletedOn;
  @override
  bool get isLocal;

  /// Create a copy of AllTasksItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllTasksItemEntityImplCopyWith<_$AllTasksItemEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
