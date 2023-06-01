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
  List<String> barcodeList = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: widget.width,
          height: widget.height,
          child: Center(
            child: ElevatedButton(
              onPressed: () async {
                String barcode = await FlutterBarcodeScanner.scanBarcode(
                  '#ff6666',
                  'Cancel',
                  true,
                  ScanMode.BARCODE,
                );

                if (barcode != '-1') {
                  setState(() {
                    barcodeList.add(barcode);
                  });
                }
              },
              child: Text('Scan Barcode'),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: barcodeList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(barcodeList[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
