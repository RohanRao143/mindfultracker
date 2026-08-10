// lib/models/data_schema_model.dart

import 'package:json_annotation/json_annotation.dart';

part 'data_schema_model.g.dart';

@JsonSerializable()
class MindfulData {
  final int savesCount;
  final FocusStreaks focusStreaks;
  @JsonKey(name: 'last_check_time')
  final DateTime? lastCheckTime;

  MindfulData({
    required this.savesCount,
    required this.focusStreaks,
    this.lastCheckTime,
  });

  factory MindfulData.fromJson(Map<String, dynamic> json) => _$MindfulDataFromJson(json);

  Map<String, dynamic> toJson() => _$MindfulDataToJson(this);

  MindfulData copyWith({
    int? savesCount,
    FocusStreaks? focusStreaks,
    DateTime? lastCheckTime,
  }) {
    return MindfulData(
      savesCount: savesCount ?? this.savesCount,
      focusStreaks: focusStreaks ?? this.focusStreaks,
      lastCheckTime: lastCheckTime ?? this.lastCheckTime,
    );
  }

  @override
  String toString() {
    return 'MindfulData{savesCount: $savesCount, focusStreaks: $focusStreaks, lastCheckTime: $lastCheckTime}';
  }
}

@JsonSerializable()
class FocusStreaks {
  final int current;
  final int longest;

  FocusStreaks({
    required this.current,
    required this.longest,
  });

  factory FocusStreaks.fromJson(Map<String, dynamic> json) => _$FocusStreaksFromJson(json);

  Map<String, dynamic> toJson() => _$FocusStreaksToJson(this);
}