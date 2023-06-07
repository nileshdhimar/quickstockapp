import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ServiceListScanTabCopyModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<String> brCodeList = [];
  void addToBrCodeList(String item) => brCodeList.add(item);
  void removeFromBrCodeList(String item) => brCodeList.remove(item);
  void removeAtIndexFromBrCodeList(int index) => brCodeList.removeAt(index);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Additional helper methods are added here.

}
