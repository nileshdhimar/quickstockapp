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
//import 'package:flutter_flow/flutter_flow.dart';

class BarcodeScannerScreen extends StatefulWidget {
  const BarcodeScannerScreen({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _BarcodeScannerScreenState createState() => _BarcodeScannerScreenState();
}

class _BarcodeScannerScreenState extends State<BarcodeScannerScreen> {
  List<String> brCodeList = [];

  void barcodeScanStream() {
    FlutterBarcodeScanner.getBarcodeStreamReceiver(
      "#ff6666",
      "Cancel",
      true,
      ScanMode.BARCODE,
    )?.listen((barcode) {
      setState(() {
        if (barcode != "-1" && barcode != "") {
          if (!brCodeList.contains(barcode)) {
            brCodeList.add(barcode);
          }
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    barcodeScanStream();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: brCodeList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(brCodeList[index]),
          );
        },
      ),
    );
  }
}
