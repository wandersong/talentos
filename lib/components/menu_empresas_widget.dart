import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_empresas_model.dart';
export 'menu_empresas_model.dart';

class MenuEmpresasWidget extends StatefulWidget {
  const MenuEmpresasWidget({Key? key}) : super(key: key);

  @override
  _MenuEmpresasWidgetState createState() => _MenuEmpresasWidgetState();
}

class _MenuEmpresasWidgetState extends State<MenuEmpresasWidget> {
  late MenuEmpresasModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuEmpresasModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 0.0,
                buttonSize: 50.0,
                icon: Icon(
                  Icons.other_houses_outlined,
                  color: FlutterFlowTheme.of(context).secondary600,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pushNamed('VagasPublicadas');
                },
              ),
            ),
            FlutterFlowIconButton(
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 50.0,
              icon: Icon(
                Icons.favorite_border,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30.0,
              ),
              onPressed: () async {
                context.pushNamed('MAIN_Candidates');
              },
            ),
          ].divide(SizedBox(width: 10.0)),
        ),
      ),
    );
  }
}
