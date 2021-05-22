// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) {
  return Task()
    ..id = json['id'] as String
    ..completedAt = json['completed_at'] == null
        ? null
        : DateTime.parse(json['completed_at'] as String)
    ..title = json['title'] as String
    ..description = json['description'] as String;
}

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'id': instance.id,
      'completed_at': instance.completedAt?.toIso8601String(),
      'title': instance.title,
      'description': instance.description,
    };
