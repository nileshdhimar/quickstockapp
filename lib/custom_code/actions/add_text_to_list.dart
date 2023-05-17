// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart';

final myTextController = TextEditingController();
List<String> textList = [];

Future<void> addTextToList() async {
  final enteredText = myTextController.text;
  if (enteredText.isNotEmpty) {
    textList.add(enteredText);
    myTextController.clear();
  }
}
