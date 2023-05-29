import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TestingModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for myTextController widget.
  TextEditingController? myTextControllerController;
  String? Function(BuildContext, String?)? myTextControllerControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    myTextControllerController?.dispose();
  }

  /// Additional helper methods are added here.

}
