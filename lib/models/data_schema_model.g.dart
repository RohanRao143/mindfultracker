// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_schema_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MindfulData _$MindfulDataFromJson(Map<String, dynamic> json) => MindfulData(
      savesCount: (json['savesCount'] as num).toInt(),
      focusStreaks:
          FocusStreaks.fromJson(json['focusStreaks'] as Map<String, dynamic>),
      lastCheckTime: json['last_check_time'] == null
          ? null
          : DateTime.parse(json['last_check_time'] as String),
    );

Map<String, dynamic> _$MindfulDataToJson(MindfulData instance) =>
    <String, dynamic>{
      'savesCount': instance.savesCount,
      'focusStreaks': instance.focusStreaks,
      'last_check_time': instance.lastCheckTime?.toIso8601String(),
    };

FocusStreaks _$FocusStreaksFromJson(Map<String, dynamic> json) => FocusStreaks(
      current: (json['current'] as num).toInt(),
      longest: (json['longest'] as num).toInt(),
    );

Map<String, dynamic> _$FocusStreaksToJson(FocusStreaks instance) =>
    <String, dynamic>{
      'current': instance.current,
      'longest': instance.longest,
    };
