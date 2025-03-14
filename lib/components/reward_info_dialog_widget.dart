import '';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'reward_info_dialog_model.dart';
export 'reward_info_dialog_model.dart';

class RewardInfoDialogWidget extends StatefulWidget {
  const RewardInfoDialogWidget({super.key});

  @override
  State<RewardInfoDialogWidget> createState() => _RewardInfoDialogWidgetState();
}

class _RewardInfoDialogWidgetState extends State<RewardInfoDialogWidget> {
  late RewardInfoDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RewardInfoDialogModel());
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
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(40.0, 40.0, 40.0, 40.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '¡Ordena ${(4 - functions.sumProductsCounts(FFAppState().LastCustomerOrdersProducts.toList())).toString()}${functions.sumProductsCounts(FFAppState().LastCustomerOrdersProducts.toList()).toString() == '3' ? ' bebida' : ' bebidas'} más y recibe cualquiera de tus últimas 4 bebidas gratis!',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Montserrat',
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    lineHeight: 1.5,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
