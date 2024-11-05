// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_task_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteTaskResponseImpl _$$DeleteTaskResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteTaskResponseImpl(
      data: TaskDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeleteTaskResponseImplToJson(
        _$DeleteTaskResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };
