// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:barcode_scan2/barcode_scan2.dart';

List<String> barcodeValues = [];

Future<void> enterBarcode(BuildContext context) async {
  bool doneScanning = false;
  List<String> serialNumbers = [];

  TextEditingController serialNumberController = TextEditingController();

  void addSerialNumber() {
    String serialNumber = serialNumberController.text.trim();
    if (serialNumber.isNotEmpty && !serialNumbers.contains(serialNumber)) {
      serialNumbers.add(serialNumber);

      serialNumberController.clear();
    }
  }

  //Navigator.pop(context, scannedValues);
  FFAppState().barcodeValues =
      serialNumbers; // Store the value in barcodeValues
}
