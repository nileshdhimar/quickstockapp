import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/error_msg/error_msg_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SwitchTenantModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for tenent widget.
  TextEditingController? tenentController;
  String? Function(BuildContext, String?)? tenentControllerValidator;
  // Stores action output result for [Backend Call - API (IsTenantAvailable)] action in Button widget.
  ApiCallResponse? apiResulthjm;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    tenentController?.dispose();
  }

  /// Additional helper methods are added here.

}
