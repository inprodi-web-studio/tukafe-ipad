import '/components/reward_info_dialog_widget.dart';
import '/components/reward_select_dialog_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'orders_count_model.dart';
export 'orders_count_model.dart';

class OrdersCountWidget extends StatefulWidget {
  const OrdersCountWidget({
    super.key,
    required this.count,
  });

  /// 0
  final int? count;

  @override
  State<OrdersCountWidget> createState() => _OrdersCountWidgetState();
}

class _OrdersCountWidgetState extends State<OrdersCountWidget>
    with TickerProviderStateMixin {
  late OrdersCountModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrdersCountModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 5000.0.ms,
            duration: 1200.0.ms,
            hz: 4,
            offset: Offset(6.0, 0.0),
            rotation: 0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.count! < 4)
          Builder(
            builder: (context) => InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                await showDialog(
                  context: context,
                  builder: (dialogContext) {
                    return Dialog(
                      elevation: 0,
                      insetPadding: EdgeInsets.zero,
                      backgroundColor: Colors.transparent,
                      alignment: AlignmentDirectional(0.0, 0.0)
                          .resolve(Directionality.of(context)),
                      child: Container(
                        height: 250.0,
                        width: 500.0,
                        child: RewardInfoDialogWidget(),
                      ),
                    );
                  },
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).accent4,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 7.0, 10.0, 7.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        FFIcons.kcoffee,
                        color: widget.count! >= 1
                            ? FlutterFlowTheme.of(context).secondary
                            : FlutterFlowTheme.of(context).accent4,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kcoffee,
                        color: widget.count! >= 2
                            ? FlutterFlowTheme.of(context).secondary
                            : FlutterFlowTheme.of(context).accent4,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kcoffee,
                        color: widget.count! >= 3
                            ? FlutterFlowTheme.of(context).secondary
                            : FlutterFlowTheme.of(context).accent4,
                        size: 24.0,
                      ),
                      Icon(
                        FFIcons.kcoffee,
                        color: widget.count! >= 4
                            ? FlutterFlowTheme.of(context).secondary
                            : FlutterFlowTheme.of(context).accent4,
                        size: 24.0,
                      ),
                    ].divide(SizedBox(width: 10.0)),
                  ),
                ),
              ),
            ),
          ),
        if (widget.count! >= 4)
          Container(
            width: 209.0,
            child: Stack(
              alignment: AlignmentDirectional(1.0, 1.0),
              children: [
                Align(
                  alignment: AlignmentDirectional(1.0, 0.0),
                  child: Builder(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await showDialog(
                          context: context,
                          builder: (dialogContext) {
                            return Dialog(
                              elevation: 0,
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              alignment: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              child: Container(
                                height: 650.0,
                                child: RewardSelectDialogWidget(),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondary,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).secondary,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 7.0, 10.0, 7.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                FFIcons.kcoffee,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                size: 24.0,
                              ),
                              Icon(
                                FFIcons.kcoffee,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                size: 24.0,
                              ),
                              Icon(
                                FFIcons.kcoffee,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                size: 24.0,
                              ),
                              Icon(
                                FFIcons.kcoffee,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                size: 24.0,
                              ),
                            ].divide(SizedBox(width: 10.0)),
                          ),
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation']!),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0.0, 35.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xB2000000),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 6.0, 12.0, 6.0),
                      child: Text(
                        '¡Tienes una bebida gratis!',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
