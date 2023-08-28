import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileDataModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for cargo widget.
  TextEditingController? cargoController;
  String? Function(BuildContext, String?)? cargoControllerValidator;
  // State field(s) for descricao widget.
  TextEditingController? descricaoController;
  String? Function(BuildContext, String?)? descricaoControllerValidator;
  // State field(s) for experiencia widget.
  String? experienciaValue;
  FormFieldController<String>? experienciaValueController;
  // State field(s) for empresa widget.
  TextEditingController? empresaController;
  String? Function(BuildContext, String?)? empresaControllerValidator;
  // State field(s) for salaryRange widget.
  double? salaryRangeValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController1?.dispose();
    cargoController?.dispose();
    descricaoController?.dispose();
    empresaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
