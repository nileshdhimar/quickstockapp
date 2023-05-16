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

class MyWidget extends StatefulWidget {
  const MyWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<String> barcodeValues = [];

  Future<void> scanBarcode() async {
    try {
      while (true) {
        ScanResult result = await BarcodeScanner.scan();
        String barcode = result.rawContent ?? '';
        setState(() {
          barcodeValues.add(barcode);
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: barcodeValues.map((value) => Text(value)).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          scanBarcode();
        },
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}
