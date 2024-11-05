// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskDtoImpl _$$TaskDtoImplFromJson(Map<String, dynamic> json) =>
    _$TaskDtoImpl(
      id: (json['id'] as num).toInt(),
      todo: json['todo'] as String,
      completed: json['completed'] as bool,
      userId: (json['userId'] as num).toInt(),
      isDeleted: json['isDeleted'] as bool? ?? false,
      deletedOn: json['deletedOn'] == null
          ? null
          : DateTime.parse(json['deletedOn'] as String),
      isLocal: json['isLocal'] as bool? ?? false,
    );

Map<String, dynamic> _$$TaskDtoImplToJson(_$TaskDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'todo': instance.todo,
      'completed': instance.completed,
      'userId': instance.userId,
      'isDeleted': instance.isDeleted,
      'deletedOn': instance.deletedOn?.toIso8601String(),
      'isLocal': instance.isLocal,
    };
