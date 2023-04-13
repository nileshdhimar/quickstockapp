import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/date_range/date_range_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InstallerFilterOptionsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for dateRange component.
  late DateRangeModel dateRangeModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dateRangeModel = createModel(context, () => DateRangeModel());
  }

  void dispose() {
    dateRangeModel.dispose();
  }

  /// Additional helper methods are added here.

}
