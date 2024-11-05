// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskState {
  BaseStatus<Object?> get getAllTasksStatus =>
      throw _privateConstructorUsedError;
  BaseStatus<Object?> get addTaskStatus => throw _privateConstructorUsedError;
  BaseStatus<Object?> get editTaskStatus => throw _privateConstructorUsedError;
  BaseStatus<Object?> get deleteTaskStatus =>
      throw _privateConstructorUsedError;
  GetAllTasksEntity? get allTasks => throw _privateConstructorUsedError;
  UpdateTaskEntity? get editTask => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskStateCopyWith<TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
  @useResult
  $Res call(
      {BaseStatus<Object?> getAllTasksStatus,
      BaseStatus<Object?> addTaskStatus,
      BaseStatus<Object?> editTaskStatus,
      BaseStatus<Object?> deleteTaskStatus,
      GetAllTasksEntity? allTasks,
      UpdateTaskEntity? editTask,
      bool isCompleted,
      int skip,
      int limit});

  $BaseStatusCopyWith<Object?, $Res> get getAllTasksStatus;
  $BaseStatusCopyWith<Object?, $Res> get addTaskStatus;
  $BaseStatusCopyWith<Object?, $Res> get editTaskStatus;
  $BaseStatusCopyWith<Object?, $Res> get deleteTaskStatus;
  $GetAllTasksEntityCopyWith<$Res>? get allTasks;
  $UpdateTaskEntityCopyWith<$Res>? get editTask;
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAllTasksStatus = null,
    Object? addTaskStatus = null,
    Object? editTaskStatus = null,
    Object? deleteTaskStatus = null,
    Object? allTasks = freezed,
    Object? editTask = freezed,
    Object? isCompleted = null,
    Object? skip = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      getAllTasksStatus: null == getAllTasksStatus
          ? _value.getAllTasksStatus
          : getAllTasksStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus<Object?>,
      addTaskStatus: null == addTaskStatus
          ? _value.addTaskStatus
          : addTaskStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus<Object?>,
      editTaskStatus: null == editTaskStatus
          ? _value.editTaskStatus
          : editTaskStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus<Object?>,
      deleteTaskStatus: null == deleteTaskStatus
          ? _value.deleteTaskStatus
          : deleteTaskStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus<Object?>,
      allTasks: freezed == allTasks
          ? _value.allTasks
          : allTasks // ignore: cast_nullable_to_non_nullable
              as GetAllTasksEntity?,
      editTask: freezed == editTask
          ? _value.editTask
          : editTask // ignore: cast_nullable_to_non_nullable
              as UpdateTaskEntity?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<Object?, $Res> get getAllTasksStatus {
    return $BaseStatusCopyWith<Object?, $Res>(_value.getAllTasksStatus,
        (value) {
      return _then(_value.copyWith(getAllTasksStatus: value) as $Val);
    });
  }

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<Object?, $Res> get addTaskStatus {
    return $BaseStatusCopyWith<Object?, $Res>(_value.addTaskStatus, (value) {
      return _then(_value.copyWith(addTaskStatus: value) as $Val);
    });
  }

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<Object?, $Res> get editTaskStatus {
    return $BaseStatusCopyWith<Object?, $Res>(_value.editTaskStatus, (value) {
      return _then(_value.copyWith(editTaskStatus: value) as $Val);
    });
  }

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<Object?, $Res> get deleteTaskStatus {
    return $BaseStatusCopyWith<Object?, $Res>(_value.deleteTaskStatus, (value) {
      return _then(_value.copyWith(deleteTaskStatus: value) as $Val);
    });
  }

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetAllTasksEntityCopyWith<$Res>? get allTasks {
    if (_value.allTasks == null) {
      return null;
    }

    return $GetAllTasksEntityCopyWith<$Res>(_value.allTasks!, (value) {
      return _then(_value.copyWith(allTasks: value) as $Val);
    });
  }

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateTaskEntityCopyWith<$Res>? get editTask {
    if (_value.editTask == null) {
      return null;
    }

    return $UpdateTaskEntityCopyWith<$Res>(_value.editTask!, (value) {
      return _then(_value.copyWith(editTask: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskStateImplCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$$TaskStateImplCopyWith(
          _$TaskStateImpl value, $Res Function(_$TaskStateImpl) then) =
      __$$TaskStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStatus<Object?> getAllTasksStatus,
      BaseStatus<Object?> addTaskStatus,
      BaseStatus<Object?> editTaskStatus,
      BaseStatus<Object?> deleteTaskStatus,
      GetAllTasksEntity? allTasks,
      UpdateTaskEntity? editTask,
      bool isCompleted,
      int skip,
      int limit});

  @override
  $BaseStatusCopyWith<Object?, $Res> get getAllTasksStatus;
  @override
  $BaseStatusCopyWith<Object?, $Res> get addTaskStatus;
  @override
  $BaseStatusCopyWith<Object?, $Res> get editTaskStatus;
  @override
  $BaseStatusCopyWith<Object?, $Res> get deleteTaskStatus;
  @override
  $GetAllTasksEntityCopyWith<$Res>? get allTasks;
  @override
  $UpdateTaskEntityCopyWith<$Res>? get editTask;
}

/// @nodoc
class __$$TaskStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskStateImpl>
    implements _$$TaskStateImplCopyWith<$Res> {
  __$$TaskStateImplCopyWithImpl(
      _$TaskStateImpl _value, $Res Function(_$TaskStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAllTasksStatus = null,
    Object? addTaskStatus = null,
    Object? editTaskStatus = null,
    Object? deleteTaskStatus = null,
    Object? allTasks = freezed,
    Object? editTask = freezed,
    Object? isCompleted = null,
    Object? skip = null,
    Object? limit = null,
  }) {
    return _then(_$TaskStateImpl(
      getAllTasksStatus: null == getAllTasksStatus
          ? _value.getAllTasksStatus
          : getAllTasksStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus<Object?>,
      addTaskStatus: null == addTaskStatus
          ? _value.addTaskStatus
          : addTaskStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus<Object?>,
      editTaskStatus: null == editTaskStatus
          ? _value.editTaskStatus
          : editTaskStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus<Object?>,
      deleteTaskStatus: null == deleteTaskStatus
          ? _value.deleteTaskStatus
          : deleteTaskStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus<Object?>,
      allTasks: freezed == allTasks
          ? _value.allTasks
          : allTasks // ignore: cast_nullable_to_non_nullable
              as GetAllTasksEntity?,
      editTask: freezed == editTask
          ? _value.editTask
          : editTask // ignore: cast_nullable_to_non_nullable
              as UpdateTaskEntity?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TaskStateImpl extends _TaskState {
  const _$TaskStateImpl(
      {this.getAllTasksStatus = const BaseStatus.initial(),
      this.addTaskStatus = const BaseStatus.initial(),
      this.editTaskStatus = const BaseStatus.initial(),
      this.deleteTaskStatus = const BaseStatus.initial(),
      this.allTasks,
      this.editTask,
      this.isCompleted = false,
      this.skip = 0,
      this.limit = 3})
      : super._();

  @override
  @JsonKey()
  final BaseStatus<Object?> getAllTasksStatus;
  @override
  @JsonKey()
  final BaseStatus<Object?> addTaskStatus;
  @override
  @JsonKey()
  final BaseStatus<Object?> editTaskStatus;
  @override
  @JsonKey()
  final BaseStatus<Object?> deleteTaskStatus;
  @override
  final GetAllTasksEntity? allTasks;
  @override
  final UpdateTaskEntity? editTask;
  @override
  @JsonKey()
  final bool isCompleted;
  @override
  @JsonKey()
  final int skip;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'TaskState(getAllTasksStatus: $getAllTasksStatus, addTaskStatus: $addTaskStatus, editTaskStatus: $editTaskStatus, deleteTaskStatus: $deleteTaskStatus, allTasks: $allTasks, editTask: $editTask, isCompleted: $isCompleted, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskStateImpl &&
            (identical(other.getAllTasksStatus, getAllTasksStatus) ||
                other.getAllTasksStatus == getAllTasksStatus) &&
            (identical(other.addTaskStatus, addTaskStatus) ||
                other.addTaskStatus == addTaskStatus) &&
            (identical(other.editTaskStatus, editTaskStatus) ||
                other.editTaskStatus == editTaskStatus) &&
            (identical(other.deleteTaskStatus, deleteTaskStatus) ||
                other.deleteTaskStatus == deleteTaskStatus) &&
            (identical(other.allTasks, allTasks) ||
                other.allTasks == allTasks) &&
            (identical(other.editTask, editTask) ||
                other.editTask == editTask) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getAllTasksStatus,
      addTaskStatus,
      editTaskStatus,
      deleteTaskStatus,
      allTasks,
      editTask,
      isCompleted,
      skip,
      limit);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskStateImplCopyWith<_$TaskStateImpl> get copyWith =>
      __$$TaskStateImplCopyWithImpl<_$TaskStateImpl>(this, _$identity);
}

abstract class _TaskState extends TaskState {
  const factory _TaskState(
      {final BaseStatus<Object?> getAllTasksStatus,
      final BaseStatus<Object?> addTaskStatus,
      final BaseStatus<Object?> editTaskStatus,
      final BaseStatus<Object?> deleteTaskStatus,
      final GetAllTasksEntity? allTasks,
      final UpdateTaskEntity? editTask,
      final bool isCompleted,
      final int skip,
      final int limit}) = _$TaskStateImpl;
  const _TaskState._() : super._();

  @override
  BaseStatus<Object?> get getAllTasksStatus;
  @override
  BaseStatus<Object?> get addTaskStatus;
  @override
  BaseStatus<Object?> get editTaskStatus;
  @override
  BaseStatus<Object?> get deleteTaskStatus;
  @override
  GetAllTasksEntity? get allTasks;
  @override
  UpdateTaskEntity? get editTask;
  @override
  bool get isCompleted;
  @override
  int get skip;
  @override
  int get limit;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskStateImplCopyWith<_$TaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
