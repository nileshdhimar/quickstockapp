// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:barcode_scan2/barcode_scan2.dart';

class Barcode extends StatefulWidget {
  const Barcode({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _BarcodeState createState() => _BarcodeState();
}

class _BarcodeState extends State<Barcode> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

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
  List<String> scannedValues = [];

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
              'Count: ${scannedValues.length}',
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
                  scanBarcode().then((String barcode) {
                    if (barcode.isNotEmpty &&
                        !scannedValues.contains(barcode)) {
                      setState(() {
                        scannedValues.add(barcode);
                      });
                    }
                  }).catchError((error) {
                    print(error);
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<String> scanBarcode() async {
    try {
      ScanResult result = await BarcodeScanner.scan();
      return result.rawContent ?? '';
    } catch (e) {
      print(e);
      return '';
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: ScanBarcodeScreen(),
  ));
}
