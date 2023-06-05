import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ServiceListScanTabCopyModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<String> brCodeList = [];
  void addToBrCodeList(String item) => brCodeList.add(item);
  void removeFromBrCodeList(String item) => brCodeList.remove(item);
  void removeAtIndexFromBrCodeList(int index) => brCodeList.removeAt(index);

  ///  State fields for stateful widgets in this page.

  // State field(s) for serialNumber widget.
  TextEditingController? serialNumberController;
  String? Function(BuildContext, String?)? serialNumberControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    serialNumberController?.dispose();
  }

  /// Additional helper methods are added here.

}
