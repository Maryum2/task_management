// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_task_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddTaskRequestImpl _$$AddTaskRequestImplFromJson(Map<String, dynamic> json) =>
    _$AddTaskRequestImpl(
      todo: json['todo'] as String,
      completed: json['completed'] as bool? ?? false,
      userId: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$$AddTaskRequestImplToJson(
        _$AddTaskRequestImpl instance) =>
    <String, dynamic>{
      'todo': instance.todo,
      'completed': instance.completed,
      'userId': instance.userId,
    };
