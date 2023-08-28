import '/backend/backend.dart';
import '/components/menu_empresas_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MAINCandidatesModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for menuEmpresas component.
  late MenuEmpresasModel menuEmpresasModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuEmpresasModel = createModel(context, () => MenuEmpresasModel());
  }

  void dispose() {
    menuEmpresasModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
