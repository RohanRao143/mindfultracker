import 'dart:async';

class TimerService {
  static final TimerService instance = TimerService._internal();
  factory TimerService() => instance;

  late Timer _timer;
  Duration? _duration;

  TimerService._internal();

  void startTimer(Duration duration) {
    _duration = duration;
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (_duration != null) {
        _duration = _duration! - const Duration(seconds: 1);
        // Implement logic to handle timer tick
      }
    });
  }

  void stopTimer() {
    _timer.cancel();
  }

  Duration? get remainingTime => _duration;
}