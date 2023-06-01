// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScannerWidget extends StatefulWidget {
  const ScannerWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _ScannerWidgetState createState() => _ScannerWidgetState();
}

class _ScannerWidgetState extends State<ScannerWidget> {
  String scannedBarcode = '';

  Future<void> scanBarcode() async {
    String barcode = await FlutterBarcodeScanner.scanBarcode(
      '#ff6666', // Custom scanner color
      'Cancel', // Cancel button text
      true, // Show flash option
      ScanMode.BARCODE, // Scan mode (supports QR codes too)
    );

    if (barcode != '-1') {
      setState(() {
        scannedBarcode = barcode;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await scanBarcode();
              },
              child: Text('Scan Barcode'),
            ),
            SizedBox(height: 16),
            Text('Scanned Barcode: $scannedBarcode'),
          ],
        ),
      ),
    );
  }
}
