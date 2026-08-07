import 'package:flutter/material.dart';

abstract class BaseProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<void> initialize() async {
    // Implement initialization logic here
  }
}