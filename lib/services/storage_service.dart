// lib/services/storage_service.dart

import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:mindfulbreak/models/data_schema_model.dart';

class StorageService {
  final String persistenceFileName = 'mindful_data.json';

  Future<Directory> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory;
  }

  Future<File> get _localFile async {
    final directory = await _localPath;
    return File('${directory.path}/$persistenceFileName');
  }

  Future<void> writeData(MindfulData data) async {
    final file = await _localFile;
    try {
      await file.writeAsString(jsonEncode(data));
    } catch (e) {
      // Handle write failure
      print('Write failed: $e');
    }
  }

  Future<MindfulData?> readData() async {
    final file = await _localFile;
    if (!await file.exists()) {
      return null; // First launch or missing file
    }

    try {
      String contents = await file.readAsString();
      MindfulData data = MindfulData.fromJson(jsonDecode(contents));
      return data;
    } catch (e) {
      // Handle read failure, invalid JSON, or malformed data
      print('Read failed: $e');
      return null;
    }
  }

  Future<void> reset() async {
    final file = await _localFile;
    if (await file.exists()) {
      await file.delete();
    }
  }
}