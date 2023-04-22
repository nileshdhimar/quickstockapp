import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/def_item_sel_module/def_item_sel_module_widget.dart';
import '/pages/components/live_stock_list/live_stock_list_widget.dart';
import '/pages/stock_order/confirm_order_item_popup/confirm_order_item_popup_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReportsSerialNumberModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for LiveStock-list component.
  late LiveStockListModel liveStockListModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    liveStockListModel = createModel(context, () => LiveStockListModel());
  }

  void dispose() {
    textController?.dispose();
    liveStockListModel.dispose();
  }

  /// Additional helper methods are added here.

}
