// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_task_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddTaskResponseImpl _$$AddTaskResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddTaskResponseImpl(
      data: TaskDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddTaskResponseImplToJson(
        _$AddTaskResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };
