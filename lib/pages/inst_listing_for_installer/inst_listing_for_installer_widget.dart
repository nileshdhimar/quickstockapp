import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'inst_listing_for_installer_model.dart';
export 'inst_listing_for_installer_model.dart';

class InstListingForInstallerWidget extends StatefulWidget {
  const InstListingForInstallerWidget({Key? key}) : super(key: key);

  @override
  _InstListingForInstallerWidgetState createState() =>
      _InstListingForInstallerWidgetState();
}

class _InstListingForInstallerWidgetState
    extends State<InstListingForInstallerWidget> {
  late InstListingForInstallerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InstListingForInstallerModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: GetInstallationCall.call(
        token: FFAppState().Token,
        tenantId: FFAppState().TenantId,
        userId: getJsonField(
          FFAppState().UserInfo,
          r'''$.id''',
        ),
        installationDate: valueOrDefault<String>(
          dateTimeFormat('yMd', getCurrentTimestamp),
          'DateTime',
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: SpinKitDoubleBounce(
                color: FlutterFlowTheme.of(context).primary,
                size: 50.0,
              ),
            ),
          );
        }
        final instListingForInstallerGetInstallationResponse = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).appBar,
              automaticallyImplyLeading: false,
              leading: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.arrow_back,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 26.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('Dashboard-Installer');
                  },
                ),
              ),
              title: Text(
                getJsonField(
                  FFAppState().UserInfo,
                  r'''$.fullName''',
                ).toString(),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'DM Sans',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).appBar,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 0.0),
                            child: FaIcon(
                              FontAwesomeIcons.calendarCheck,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 30.0,
                            ),
                          ),
                          Text(
                            'Booked',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 0.0),
                            child: FaIcon(
                              FontAwesomeIcons.calendarMinus,
                              color: FlutterFlowTheme.of(context).success,
                              size: 30.0,
                            ),
                          ),
                          Text(
                            'Availabel',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 0.0),
                            child: FaIcon(
                              FontAwesomeIcons.calendarTimes,
                              color: FlutterFlowTheme.of(context).error,
                              size: 30.0,
                            ),
                          ),
                          Text(
                            'Not Availabel',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                    child: FlutterFlowCalendar(
                      color: FlutterFlowTheme.of(context).primary,
                      iconColor: FlutterFlowTheme.of(context).primary,
                      weekFormat: false,
                      weekStartsMonday: true,
                      onChange: (DateTimeRange? newSelectedDate) {
                        setState(
                            () => _model.calendarSelectedDay = newSelectedDate);
                      },
                      titleStyle: FlutterFlowTheme.of(context).titleMedium,
                      dayOfWeekStyle: TextStyle(
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                      dateStyle: TextStyle(),
                      selectedDateStyle: TextStyle(),
                      inactiveDateStyle: TextStyle(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
