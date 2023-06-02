import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ServiceListScanTabModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for serialNumberController widget.
  TextEditingController? serialNumberControllerController;
  String? Function(BuildContext, String?)?
      serialNumberControllerControllerValidator;
  // Stores action output result for [Custom Action - barcodeScanStream] action in IconButton widget.
  List<String>? barcodeOutput;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    serialNumberControllerController?.dispose();
  }

  /// Additional helper methods are added here.

}
