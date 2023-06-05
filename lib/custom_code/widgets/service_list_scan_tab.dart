// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom widgets

import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ServiceListScanTab extends StatefulWidget {
  const ServiceListScanTab({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _ServiceListScanTabState createState() => _ServiceListScanTabState();
}

class _ServiceListScanTabState extends State<ServiceListScanTab> {
  List<String> brCodeList = [];

  // _ServiceListScanTabState get _model => _model;
  Future<void> scanBarcode() async {
    String barcode = await FlutterBarcodeScanner.scanBarcode(
      "#ff6666",
      "Cancel",
      true,
      ScanMode.BARCODE,
    );
    setState(() {
      if (barcode != "-1" && barcode != "") {
        if (!brCodeList.contains(barcode)) {
          brCodeList.add(barcode);
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      // barcodeScanStream();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
// Generated code for this Column Widget...
          // Generated code for this Column Widget...
          // Generated code for this Column Widget...

          Expanded(
            child: ListView.builder(
              itemCount: brCodeList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(brCodeList[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
