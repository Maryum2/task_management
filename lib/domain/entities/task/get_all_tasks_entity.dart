import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_tasks_entity.freezed.dart';

@freezed
class GetAllTasksEntity with _$GetAllTasksEntity {
  const factory GetAllTasksEntity({
     int? total,
     int? skip,
     int? limit,
    required List<AllTasksItemEntity>? allTasksItemEntity,
  }) = _GetAllTasksEntity;
}

@freezed
class AllTasksItemEntity with _$AllTasksItemEntity {
  const factory AllTasksItemEntity({
    required int id,
    required String todo,
    required bool completed,
    required int userId,
    @Default(false) bool isDeleted, 
    DateTime? deletedOn,
    @Default(false) bool isLocal,
  }) = _AllTasksItemEntity;
}
