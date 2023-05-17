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

Future<void> scanBarcode() async {
  bool doneScanning = false;
  List<String> scannedValues = [];

  while (!doneScanning) {
    try {
      ScanResult result = await BarcodeScanner.scan();
      String barcode = result.rawContent ?? '';
      if (barcode.isEmpty) {
        doneScanning = true;
      } else if (!scannedValues.contains(barcode)) {
        scannedValues.add(barcode);
      }
    } catch (e) {
      print(e);
      doneScanning = true;
    }
  }

  barcodeValues = scannedValues; // Store the value in barcodeValues
}
