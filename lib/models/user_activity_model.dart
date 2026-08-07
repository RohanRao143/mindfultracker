import 'package:flutter/material.dart';

class UserActivity {
  final DateTime timestamp;
  final String eventType;
  final Map<String, dynamic>? metadata;

  UserActivity({
    required this.timestamp,
    required this.eventType,
    this.metadata = const {},
  });

  factory UserActivity.fromJson(Map<String, dynamic> json) => UserActivity(
        timestamp: DateTime.parse(json['timestamp']),
        eventType: json['eventType'],
        metadata: json['metadata'] as Map<String, dynamic>,
      );

  Map<String, dynamic> toJson() => {
        'timestamp': timestamp.toIso8601String(),
        'eventType': eventType,
        'metadata': metadata,
      };
}