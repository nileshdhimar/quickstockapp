import '/components/wholesale_order_list_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/listing_filter/listing_filter_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WholesaleOrdersScannedOrderModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for WholesaleOrderList component.
  late WholesaleOrderListModel wholesaleOrderListModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    wholesaleOrderListModel =
        createModel(context, () => WholesaleOrderListModel());
  }

  void dispose() {
    textController?.dispose();
    wholesaleOrderListModel.dispose();
  }

  /// Additional helper methods are added here.

}
