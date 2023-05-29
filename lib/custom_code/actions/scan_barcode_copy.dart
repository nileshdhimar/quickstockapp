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

Future<void> scanBarcodeCopy(BuildContext context) async {
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

  FFAppState().barcodeValues =
      scannedValues; // Store the value in barcodeValues
}

class ScanBarcodeScreen extends StatefulWidget {
  @override
  _ScanBarcodeScreenState createState() => _ScanBarcodeScreenState();
}

class _ScanBarcodeScreenState extends State<ScanBarcodeScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barcode Scanner'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Count: $count',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: ElevatedButton(
                child: Text('Scan Barcode'),
                onPressed: () {
                  scanBarcode(context).then((_) {
                    setState(() {
                      count = FFAppState().barcodeValues.length;
                    });
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ScanBarcodeScreen(),
  ));
}
