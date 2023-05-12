import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ServiceListScanTabModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for serialno_text widget.
  TextEditingController? serialnoTextController;
  String? Function(BuildContext, String?)? serialnoTextControllerValidator;
  var barcodeScan = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    serialnoTextController?.dispose();
  }

  /// Additional helper methods are added here.

}
