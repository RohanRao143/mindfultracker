class AppConstants {
  // Interrupt thresholds
  static const int shortInterruptThreshold = 10;
  static const int longInterruptThreshold = 60;

  // Scroll thresholds
  static const double smallScrollThreshold = 50.0;
  static const double largeScrollThreshold = 200.0;

  // Overlay duration
  static const Duration overlayDuration = Duration(seconds: 3);

  // File names
  static const String userActivityFile = 'user_activity.json';

  // Default streak values
  static const int defaultStreak = 0;
}