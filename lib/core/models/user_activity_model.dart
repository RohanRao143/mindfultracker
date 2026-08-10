// lib/core/models/user_activity_model.dart

import 'package:json_annotation/json_annotation.dart';

part 'user_activity_model.g.dart';

@JsonSerializable()
class UserActivity {
  final DateTime timestamp;
  final String eventType;
  final Map<String, dynamic>? metadata;

  UserActivity({
    required this.timestamp,
    required this.eventType,
    this.metadata,
  });

  factory UserActivity.fromJson(Map<String, dynamic> json) => _$UserActivityFromJson(json);

  Map<String, dynamic> toJson() => _$UserActivityToJson(this);

  UserActivity copyWith({
    DateTime? timestamp,
    String? eventType,
    Map<String, dynamic>? metadata,
  }) {
    return UserActivity(
      timestamp: timestamp ?? this.timestamp,
      eventType: eventType ?? this.eventType,
      metadata: metadata ?? this.metadata,
    );
  }

  @override
  String toString() {
    return 'UserActivity{timestamp: $timestamp, eventType: $eventType, metadata: $metadata}';
  }
}