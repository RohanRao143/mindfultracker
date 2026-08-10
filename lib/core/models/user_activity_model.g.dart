// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserActivity _$UserActivityFromJson(Map<String, dynamic> json) => UserActivity(
      timestamp: DateTime.parse(json['timestamp'] as String),
      eventType: json['eventType'] as String,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$UserActivityToJson(UserActivity instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'eventType': instance.eventType,
      'metadata': instance.metadata,
    };
