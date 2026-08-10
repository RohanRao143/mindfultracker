// lib/core/providers/base_provider.dart

import 'package:flutter/material.dart';

abstract class BaseProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool _isInitialized = false;

  bool get isLoading => _isLoading;
  bool get isInitialized => _isInitialized;

  void initialize() {
    if (!_isInitialized) {
      _isInitialized = true;
      notifyListeners();
    }
  }

  Future<void> load() async {
    if (!_isLoading && !_isInitialized) {
      _isLoading = true;
      notifyListeners();

      // Simulate loading
      await _loadData();

      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> _loadData() async {
    // Implement data loading logic here
  }
}