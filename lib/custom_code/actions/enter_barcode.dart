// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:provider/provider.dart';

List<String> barcodeValues = [];
//String barcodeNo = '';
Future<void> enterBarcode(BuildContext context) async {
  List<String> serialNumbers = [];

  TextEditingController serialNumberController = TextEditingController();

  void addSerialNumber() {
    String barcodeNo = serialNumberController.text.trim();
    showAlert(context, barcodeNo);
    //if (barcodeNo != Null) {
    //  showAlert(context, 'This is an alert message!');
    //   barcodeValues.add(barcodeNo);
    //   serialNumbers.add(barcodeNo);
    //   serialNumberController.clear();
    // }
  }

  // showAlert(context, 'Outside!');
//&& !serialNumbers.contains(serialNumber)
  // Store the value of serialNumberController in barcodeValues
  addSerialNumber();
}

void showAlert(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Alert'),
        content: Text(message),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}
