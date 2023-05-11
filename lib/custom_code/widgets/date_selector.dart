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
    //currentDate = appState.customDate ?? DateTime.now();
    currentDate = DateTime.now();
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

  Color containerColor = Colors.white;
  Color iconColor = Color(0xFFB9B6E2);
  // Rest of the widget code...
  @override
  Widget build(BuildContext context) {
    final DateFormat formatter = DateFormat('yMMMd');
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          onHover: (PointerEvent event) {
            setState(() {
              // Change the color of the icon and container when hovered over
              iconColor = Colors.white;
              containerColor = Color(0xFFB9B6E2);
            });
          },
          onExit: (PointerEvent event) {
            setState(() {
              // Change the color of the icon and container when the cursor is not hovering over it
              iconColor = Color(0xFFB9B6E2);
              containerColor = Colors.white;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: IconButton(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
              onPressed: _decrementDate,
              icon: Icon(Icons.chevron_left_sharp),
              color: iconColor,
              iconSize: 24,
            ),
          ),
        ),
        SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            _selectDate(context);
          },
          child: Container(
            child: Text(
              formatter.format(currentDate),
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          onHover: (PointerEvent event) {
            setState(() {
              // Change the color of the icon when hovered over
              iconColor = Colors.white;
              containerColor = Color(0xFFB9B6E2);
            });
          },
          onExit: (PointerEvent event) {
            setState(() {
              // Change the color of the icon when the cursor is not hovering over it
              iconColor = Color(0xFFB9B6E2);
              containerColor = Colors.white;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: IconButton(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
              onPressed: _incrementDate,
              icon: Icon(Icons.chevron_right_sharp),
              color: iconColor,
              iconSize: 24,
            ),
          ),
        ),
      ],
    );
  }
}
