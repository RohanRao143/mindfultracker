// test/user_activity_model_test.dart

import 'package:flutter/material.dart';
import 'package:mindfulbreak/core/models/user_activity_model.dart';
import 'package:mindfulbreak/models/data_schema_model.dart'; // Import the new model file
import 'package:test/test.dart';

void main() {
  group('UserActivity', () {
    test('default values', () {
      final userActivity = UserActivity(
        timestamp: DateTime.now(),
        eventType: 'test_event',
      );
      expect(userActivity.timestamp, isNotNull);
      expect(userActivity.eventType, equals('test_event'));
      expect(userActivity.metadata, isNull);
    });

    test('JSON round trip', () {
      final userActivity = UserActivity(
        timestamp: DateTime.now(),
        eventType: 'test_event',
        metadata: {'key': 'value'},
      );
      final json = userActivity.toJson();
      final deserializedUserActivity = UserActivity.fromJson(json);
      expect(deserializedUserActivity, equals(userActivity));
    });

    test('copyWith', () {
      final userActivity = UserActivity(
        timestamp: DateTime.now(),
        eventType: 'test_event',
        metadata: {'key': 'value'},
      );
      final copiedUserActivity = userActivity.copyWith(eventType: 'new_event');
      expect(copiedUserActivity.eventType, equals('new_event'));
      expect(copiedUserActivity.metadata, equals({'key': 'value'}));
    });

    test('missing optional fields', () {
      final userActivity = UserActivity(
        timestamp: DateTime.now(),
        eventType: 'test_event',
      );
      final json = userActivity.toJson();
      final deserializedUserActivity = UserActivity.fromJson(json);
      expect(deserializedUserActivity.metadata, isNull);
    });
  });

  group('MindfulData', () {
    test('default values', () {
      final mindfulData = MindfulData(
        savesCount: 0,
        focusStreaks: FocusStreaks(current: 0, longest: 0),
      );
      expect(mindfulData.savesCount, equals(0));
      expect(mindfulData.focusStreaks.current, equals(0));
      expect(mindfulData.focusStreaks.longest, equals(0));
    });

    test('JSON round trip', () {
      final mindfulData = MindfulData(
        savesCount: 5,
        focusStreaks: FocusStreaks(current: 3, longest: 10),
        lastCheckTime: DateTime.now(),
      );
      final json = mindfulData.toJson();
      final deserializedMindfulData = MindfulData.fromJson(json);
      expect(deserializedMindfulData, equals(mindfulData));
    });
  });
}