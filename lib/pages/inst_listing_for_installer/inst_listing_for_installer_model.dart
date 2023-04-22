import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/installer_filter_options/installer_filter_options_widget.dart';
import '/pages/components/installer_list_for_installer/installer_list_for_installer_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InstListingForInstallerModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for InstallerListForInstaller component.
  late InstallerListForInstallerModel installerListForInstallerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    installerListForInstallerModel =
        createModel(context, () => InstallerListForInstallerModel());
  }

  void dispose() {
    textController?.dispose();
    installerListForInstallerModel.dispose();
  }

  /// Additional helper methods are added here.

}
