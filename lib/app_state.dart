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
    _serialNo = prefs.getString('ff_serialNo') ?? _serialNo;
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

  DateTime? _customDate = DateTime.fromMillisecondsSinceEpoch(946731480000);
  DateTime? get customDate => _customDate;
  set customDate(DateTime? _value) {
    _customDate = _value;
  }

  List<String> _imageUplaod = ['default/path'];
  List<String> get imageUplaod => _imageUplaod;
  set imageUplaod(List<String> _value) {
    _imageUplaod = _value;
  }

  void addToImageUplaod(String _value) {
    _imageUplaod.add(_value);
  }

  void removeFromImageUplaod(String _value) {
    _imageUplaod.remove(_value);
  }

  void removeAtIndexFromImageUplaod(int _index) {
    _imageUplaod.removeAt(_index);
  }

  List<String> _urlImages = [];
  List<String> get urlImages => _urlImages;
  set urlImages(List<String> _value) {
    _urlImages = _value;
  }

  void addToUrlImages(String _value) {
    _urlImages.add(_value);
  }

  void removeFromUrlImages(String _value) {
    _urlImages.remove(_value);
  }

  void removeAtIndexFromUrlImages(int _index) {
    _urlImages.removeAt(_index);
  }

  String _serialNo = '';
  String get serialNo => _serialNo;
  set serialNo(String _value) {
    _serialNo = _value;
    prefs.setString('ff_serialNo', _value);
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
