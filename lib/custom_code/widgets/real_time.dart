// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:quds_ui_kit/quds_ui_kit.dart';

class RealTime extends StatefulWidget {
  const RealTime({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _RealTimeState createState() => _RealTimeState();
}

class _RealTimeState extends State<RealTime> {
  @override
  Widget build(BuildContext context) {
    // return QudsDigitalClockViewer(
    //   showSeconds: true,
    //   showTimePeriod: false,
    // );
    return QudsDigitalClockViewer(
        showSeconds: true,
        showTimePeriod: false,
        style: TextStyle(color: FlutterFlowTheme.of(context).primaryText),
        backgroundColor: Color.fromRGBO(232, 241, 255, 0));
  }
}
