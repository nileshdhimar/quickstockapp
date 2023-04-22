import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WarehouseNotesModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for tenent widget.
  TextEditingController? tenentController;
  String? Function(BuildContext, String?)? tenentControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    tenentController?.dispose();
  }

  /// Additional helper methods are added here.

}
