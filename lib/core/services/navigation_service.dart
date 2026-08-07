import 'package:flutter/material.dart';

class NavigationService {
  static GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();

  static void navigateTo(Widget screen) {
    if (navigatorKey != null && navigatorKey!.currentContext != null) {
      Navigator.of(navigatorKey!.currentContext!).push(MaterialPageRoute(builder: (context) => screen));
    }
  }

  static void pop() {
    if (navigatorKey != null && navigatorKey!.currentContext != null) {
      Navigator.of(navigatorKey!.currentContext!).pop();
    }
  }
}