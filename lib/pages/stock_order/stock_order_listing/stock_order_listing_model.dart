import '/components/stock_order_list_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/installer_filter_options/installer_filter_options_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StockOrderListingModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for StockOrderList component.
  late StockOrderListModel stockOrderListModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    stockOrderListModel = createModel(context, () => StockOrderListModel());
  }

  void dispose() {
    textController?.dispose();
    stockOrderListModel.dispose();
  }

  /// Additional helper methods are added here.

}
