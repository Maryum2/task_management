// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_tasks_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllTasksResponseImpl _$$GetAllTasksResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAllTasksResponseImpl(
      total: (json['total'] as num).toInt(),
      skip: (json['skip'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      data: (json['todos'] as List<dynamic>)
          .map((e) => TaskDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetAllTasksResponseImplToJson(
        _$GetAllTasksResponseImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
      'todos': instance.data.map((e) => e.toJson()).toList(),
    };
