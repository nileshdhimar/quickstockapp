// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

Future<List<String>> barcodeScanStream(
    BuildContext context, List<String> barcodeList) async {
  // Add your function code here!
  FlutterBarcodeScanner.getBarcodeStreamReceiver(
          "#ff6666", "Cancel", true, ScanMode.BARCODE)!
      .listen((barcode) {
    barcodeList.add(barcode.toString());
  });

  barcodeList.add("Suresh123");

  return barcodeList;
}
