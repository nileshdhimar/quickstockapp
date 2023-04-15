import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';

bool checkPermission(
  List<String> permissionList,
  String parmissionName,
) {
  if (permissionList.contains(parmissionName)) {
    return true;
  } else {
    return false;
  }
}

String getGreetings() {
  int hour = DateTime.now().hour;
  if (hour < 12) {
    return "Good Morning,";
  } else if (hour < 17) {
    return "Good Afternoon,";
  } else if (hour < 21) {
    return "Good Evening,";
  } else {
    return "Good Night,";
  }
}
