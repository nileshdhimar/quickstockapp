import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'service_list_scan_tab_copy_model.dart';
export 'service_list_scan_tab_copy_model.dart';

class ServiceListScanTabCopyWidget extends StatefulWidget {
  const ServiceListScanTabCopyWidget({Key? key}) : super(key: key);

  @override
  _ServiceListScanTabCopyWidgetState createState() =>
      _ServiceListScanTabCopyWidgetState();
}

class _ServiceListScanTabCopyWidgetState
    extends State<ServiceListScanTabCopyWidget> {
  late ServiceListScanTabCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServiceListScanTabCopyModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).appBar,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 26.0,
            ),
            onPressed: () async {
              context.pushNamed('ServiceList');
            },
          ),
          title: Text(
            'Services No. : 10223',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'DM Sans',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              child: Container(
                width: 100.0,
                height: MediaQuery.of(context).size.height * 1.0,
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 1.0,
                ),
                decoration: BoxDecoration(
                  color: Color(0x00FFFFFF),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: MediaQuery.of(context).size.height * 1.0,
                  child: custom_widgets.ServiceListScanTab(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.height * 1.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
