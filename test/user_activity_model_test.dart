// test/user_activity_model_test.dart

import 'package:mindfulbreak/core/models/user_activity_model.dart';
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
}