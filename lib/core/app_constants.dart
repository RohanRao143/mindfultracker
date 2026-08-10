// lib/core/app_constants.dart
class AppConstants {
  static const int navigationSwitches = 3;
  static const Duration navigationWindow = Duration(seconds: 10);

  static const Duration continuousScrollingThreshold = Duration(minutes: 3);
  static const Duration maxContinuousScrollPause = Duration(seconds: 15);

  static const Duration interventionOverlayDuration = Duration(seconds: 15);

  static const int defaultSaveCount = 0;
  static const int defaultCurrentStreak = 0;
  static const int defaultLongestStreak = 0;

  static const String persistenceFileName = 'mindful_data.json';
}