import 'package:flutter/material.dart';

class DataSchema {
  final int savesCount;
  final int focusStreaks;
  final DateTime lastCheckTime;

  DataSchema({
    required this.savesCount,
    required this.focusStreaks,
    required this.lastCheckTime,
  });

  factory DataSchema.fromJson(Map<String, dynamic> json) => DataSchema(
        savesCount: json['savesCount'],
        focusStreaks: json['focusStreaks'],
        lastCheckTime: DateTime.parse(json['lastCheckTime']),
      );

  Map<String, dynamic> toJson() => {
        'savesCount': savesCount,
        'focusStreaks': focusStreaks,
        'lastCheckTime': lastCheckTime.toIso8601String(),
      };
}