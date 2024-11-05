import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_dto.freezed.dart';
part 'task_dto.g.dart';

@freezed
class TaskDto with _$TaskDto {
  const factory TaskDto({
    required int id,
    required String todo,
    required bool completed,
    required int userId,
    @Default(false) bool isDeleted,
    DateTime? deletedOn,
    @Default(false) bool isLocal,
  }) = _TaskDto;

  factory TaskDto.fromJson(Map<String, dynamic> json) =>
      _$TaskDtoFromJson(json);
}
