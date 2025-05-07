import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'product_count_model.dart';
export 'product_count_model.dart';

class ProductCountWidget extends StatefulWidget {
  const ProductCountWidget({
    super.key,
    int? value,
    this.onChange,
  }) : this.value = value ?? 1;

  final int value;
  final Future Function()? onChange;

  @override
  State<ProductCountWidget> createState() => _ProductCountWidgetState();
}

class _ProductCountWidgetState extends State<ProductCountWidget> {
  late ProductCountModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductCountModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 30.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).accent4,
          width: 1.0,
        ),
      ),
      child: FlutterFlowCountController(
        decrementIconBuilder: (enabled) => Icon(
          FFIcons.kminus,
          color: enabled
              ? FlutterFlowTheme.of(context).primaryText
              : FlutterFlowTheme.of(context).secondaryText,
          size: 20.0,
        ),
        incrementIconBuilder: (enabled) => Icon(
          FFIcons.kplus,
          color: enabled
              ? FlutterFlowTheme.of(context).primaryText
              : FlutterFlowTheme.of(context).secondaryText,
          size: 20.0,
        ),
        countBuilder: (count) => Text(
          count.toString(),
          style: FlutterFlowTheme.of(context).titleLarge.override(
                font: GoogleFonts.montserrat(
                  fontWeight:
                      FlutterFlowTheme.of(context).titleLarge.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                ),
                fontSize: 16.0,
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).titleLarge.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
              ),
        ),
        count: _model.countControllerValue ??= widget.value,
        updateCount: (count) async {
          safeSetState(() => _model.countControllerValue = count);
          await widget.onChange?.call();
        },
        stepSize: 1,
        minimum: 1,
        maximum: 20,
        contentPadding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
      ),
    );
  }
}
