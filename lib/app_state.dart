import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _TenantName = prefs.getString('ff_TenantName') ?? _TenantName;
    _TenantId = prefs.getInt('ff_TenantId') ?? _TenantId;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _TenantName = '';
  String get TenantName => _TenantName;
  set TenantName(String _value) {
    _TenantName = _value;
    prefs.setString('ff_TenantName', _value);
  }

  int _TenantId = 0;
  int get TenantId => _TenantId;
  set TenantId(int _value) {
    _TenantId = _value;
    prefs.setInt('ff_TenantId', _value);
  }

  String _Token = '';
  String get Token => _Token;
  set Token(String _value) {
    _Token = _value;
  }

  dynamic _UserInfo;
  dynamic get UserInfo => _UserInfo;
  set UserInfo(dynamic _value) {
    _UserInfo = _value;
  }

  DateTime? _customDate = DateTime.fromMillisecondsSinceEpoch(1683273540000);
  DateTime? get customDate => _customDate;
  set customDate(DateTime? _value) {
    _customDate = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
