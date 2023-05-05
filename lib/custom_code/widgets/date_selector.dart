// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:intl/intl.dart';
import '/custom_code/widgets/date_selector.dart'; // Import custom widget

class DateSelector extends StatefulWidget {
  const DateSelector({
    Key? key,
    this.width,
    this.height,
    this.refreshpageURL,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Future<dynamic> Function()? refreshpageURL;

  @override
  _DateSelectorState createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  late DateTime currentDate;
  late FFAppState appState;

  @override
  void initState() {
    super.initState();
    appState = FFAppState();
    currentDate = appState.customDate ?? DateTime.now();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != currentDate) {
      setState(() {
        currentDate = picked;
        appState.customDate = currentDate;
        widget.refreshpageURL?.call();
      });
    }
  }

  void _incrementDate() {
    setState(() {
      currentDate = currentDate.add(Duration(days: 1));
      appState.customDate = currentDate;
      widget.refreshpageURL?.call();
    });
  }

  void _decrementDate() {
    setState(() {
      currentDate = currentDate.subtract(Duration(days: 1));
      appState.customDate = currentDate;
      widget.refreshpageURL?.call();
    });
  }

  @override
  Widget build(BuildContext context) {
    final DateFormat formatter = DateFormat('yMMMd');
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
            onPressed: _decrementDate,
            icon: Icon(Icons.arrow_left),
            color: Colors.white,
            iconSize: 40,
          ),
        ),
        SizedBox(width: 16),
        GestureDetector(
          onTap: () {
            _selectDate(context);
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              formatter.format(currentDate),
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(width: 16),
        Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
            onPressed: _incrementDate,
            icon: Icon(Icons.arrow_right),
            color: Colors.white,
            iconSize: 40,
          ),
        ),
      ],
    );
  }
}
