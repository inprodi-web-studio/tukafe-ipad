import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_configuration_dialog_model.dart';
export 'product_configuration_dialog_model.dart';

class ProductConfigurationDialogWidget extends StatefulWidget {
  const ProductConfigurationDialogWidget({
    super.key,
    required this.productId,
    bool? isFree,
  }) : this.isFree = isFree ?? false;

  final String? productId;
  final bool isFree;

  @override
  State<ProductConfigurationDialogWidget> createState() =>
      _ProductConfigurationDialogWidgetState();
}

class _ProductConfigurationDialogWidgetState
    extends State<ProductConfigurationDialogWidget> {
  late ProductConfigurationDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductConfigurationDialogModel());
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
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(40.0),
        child: FutureBuilder<ApiCallResponse>(
          future: ProductsGroup.singleProductCall.call(
            productId: widget.productId,
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 80.0,
                  height: 80.0,
                  child: SpinKitSquareCircle(
                    color: FlutterFlowTheme.of(context).primary,
                    size: 80.0,
                  ),
                ),
              );
            }
            final rowSingleProductResponse = snapshot.data!;

            return Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: CachedNetworkImage(
                          fadeInDuration: Duration(milliseconds: 500),
                          fadeOutDuration: Duration(milliseconds: 500),
                          imageUrl:
                              '${FFAppConstants.BaseURL}${ProductsGroup.singleProductCall.data(
                                    rowSingleProductResponse.jsonBody,
                                  )?.photoOrigin}',
                          width: double.infinity,
                          height: MediaQuery.sizeOf(context).height * 0.6,
                          fit: BoxFit.none,
                          alignment: Alignment(0.0, 0.0),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Text(
                          '* Imagen con propositos ilustrativos',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: GoogleFonts.montserrat(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          ProductsGroup.singleProductCall
                              .data(
                                rowSingleProductResponse.jsonBody,
                              )
                              ?.productName,
                          '[PRODUCT]',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              fontSize: 40.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).accent4,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 6.0, 12.0, 6.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 30.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Icon(
                                    FFIcons.kcoffeeBean1,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    size: 16.0,
                                  ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    ProductsGroup.singleProductCall
                                        .data(
                                          rowSingleProductResponse.jsonBody,
                                        )
                                        ?.categoryName,
                                    '[CATEGORY]',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ].divide(SizedBox(width: 10.0)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: Text(
                          widget.isFree
                              ? '¡Gratis!'
                              : valueOrDefault<String>(
                                  functions.formatCurrency(
                                      ProductsGroup.singleProductCall
                                          .data(
                                            rowSingleProductResponse.jsonBody,
                                          )!
                                          .spots
                                          .firstOrNull!
                                          .price,
                                      _model.extra),
                                  '\$0',
                                ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 35.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                      if (ProductsGroup.singleProductCall
                              .data(
                                rowSingleProductResponse.jsonBody,
                              )!
                              .groupModifications
                              .length >
                          0)
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final modificators =
                                    ProductsGroup.singleProductCall
                                            .data(
                                              rowSingleProductResponse.jsonBody,
                                            )
                                            ?.groupModifications
                                            .toList() ??
                                        [];

                                return Container(
                                  width: double.infinity,
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 40.0),
                                        child: PageView.builder(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          controller: _model
                                                  .modificatorsController ??=
                                              PageController(
                                                  initialPage: max(
                                                      0,
                                                      min(
                                                          0,
                                                          modificators.length -
                                                              1))),
                                          scrollDirection: Axis.horizontal,
                                          itemCount: modificators.length,
                                          itemBuilder:
                                              (context, modificatorsIndex) {
                                            final modificatorsItem =
                                                modificators[modificatorsIndex];
                                            return SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    modificatorsItem.name,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .montserrat(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 22.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                  Builder(
                                                    builder: (context) {
                                                      final value =
                                                          modificatorsItem
                                                              .modifications
                                                              .toList();

                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .stretch,
                                                        children: List.generate(
                                                            value.length,
                                                            (valueIndex) {
                                                          final valueItem =
                                                              value[valueIndex];
                                                          return InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              if ((_model
                                                                      .product
                                                                      ?.modification
                                                                      .elementAtOrNull(
                                                                          modificatorsIndex)) !=
                                                                  null) {
                                                                _model
                                                                    .updateProductStruct(
                                                                  (e) => e
                                                                    ..updateModification(
                                                                      (e) => e[
                                                                              modificatorsIndex] =
                                                                          OrderProductModificationStruct(
                                                                        id: valueItem
                                                                            .dishModificationId,
                                                                        count:
                                                                            1,
                                                                        name: valueItem
                                                                            .name,
                                                                        price: valueItem
                                                                            .price,
                                                                      ),
                                                                    ),
                                                                );
                                                                _model
                                                                    .extra = _model
                                                                        .extra +
                                                                    valueItem
                                                                        .price;
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                _model
                                                                    .updateProductStruct(
                                                                  (e) => e
                                                                    ..updateModification(
                                                                      (e) => e.insert(
                                                                          modificatorsIndex,
                                                                          OrderProductModificationStruct(
                                                                            id: valueItem.dishModificationId,
                                                                            count:
                                                                                1,
                                                                            name:
                                                                                valueItem.name,
                                                                            price:
                                                                                valueItem.price,
                                                                          )),
                                                                    ),
                                                                );
                                                                _model
                                                                    .extra = _model
                                                                        .extra +
                                                                    valueItem
                                                                        .price;
                                                                safeSetState(
                                                                    () {});
                                                              }

                                                              if (_model
                                                                      .modificatorsCurrentIndex !=
                                                                  (ProductsGroup
                                                                          .singleProductCall
                                                                          .data(
                                                                            rowSingleProductResponse.jsonBody,
                                                                          )!
                                                                          .groupModifications
                                                                          .length -
                                                                      1)) {
                                                                await _model
                                                                    .modificatorsController
                                                                    ?.nextPage(
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          300),
                                                                  curve: Curves
                                                                      .ease,
                                                                );
                                                              }
                                                            },
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  (_model.product?.modification.elementAtOrNull(modificatorsIndex))
                                                                              ?.id ==
                                                                          valueItem
                                                                              .dishModificationId
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : Color(
                                                                          0x3F57636C),
                                                                  Color(
                                                                      0x3F57636C),
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4.0),
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            10.0,
                                                                            10.0,
                                                                            10.0),
                                                                    child: Text(
                                                                      valueItem
                                                                          .name,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.montserrat(
                                                                              fontWeight: FontWeight.w500,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color:
                                                                                valueOrDefault<Color>(
                                                                              (_model.product?.modification.elementAtOrNull(modificatorsIndex))?.id == valueItem.dishModificationId ? FlutterFlowTheme.of(context).secondaryBackground : Color(0xFF57636C),
                                                                              Color(0xFF57636C),
                                                                            ),
                                                                            fontSize:
                                                                                18.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  if (valueItem
                                                                          .price !=
                                                                      0.0)
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          10.0,
                                                                          10.0),
                                                                      child:
                                                                          Text(
                                                                        '+ \$${valueItem.price.toString()}',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.montserrat(
                                                                                fontWeight: FontWeight.w500,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: valueOrDefault<Color>(
                                                                                (_model.product?.modification.elementAtOrNull(modificatorsIndex))?.id == valueItem.dishModificationId ? FlutterFlowTheme.of(context).secondaryBackground : Color(0xFF57636C),
                                                                                Color(0xFF57636C),
                                                                              ),
                                                                              fontSize: 18.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        }).divide(SizedBox(
                                                            height: 10.0)),
                                                      );
                                                    },
                                                  ),
                                                ].divide(
                                                    SizedBox(height: 10.0)),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 16.0),
                                          child: smooth_page_indicator
                                              .SmoothPageIndicator(
                                            controller: _model
                                                    .modificatorsController ??=
                                                PageController(
                                                    initialPage: max(
                                                        0,
                                                        min(
                                                            0,
                                                            modificators
                                                                    .length -
                                                                1))),
                                            count: modificators.length,
                                            axisDirection: Axis.horizontal,
                                            onDotClicked: (i) async {
                                              await _model
                                                  .modificatorsController!
                                                  .animateToPage(
                                                i,
                                                duration:
                                                    Duration(milliseconds: 500),
                                                curve: Curves.ease,
                                              );
                                              safeSetState(() {});
                                            },
                                            effect: smooth_page_indicator
                                                .ExpandingDotsEffect(
                                              expansionFactor: 3.0,
                                              spacing: 12.0,
                                              radius: 8.0,
                                              dotWidth: 8.0,
                                              dotHeight: 8.0,
                                              dotColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent4,
                                              activeDotColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              paintStyle: PaintingStyle.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      if (!widget.isFree)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 40.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(10.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).accent4,
                                width: 1.0,
                              ),
                            ),
                            child: FlutterFlowCountController(
                              decrementIconBuilder: (enabled) => Icon(
                                Icons.remove_rounded,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).secondaryText
                                    : FlutterFlowTheme.of(context).accent4,
                                size: 30.0,
                              ),
                              incrementIconBuilder: (enabled) => Icon(
                                Icons.add_rounded,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).primary
                                    : FlutterFlowTheme.of(context).accent4,
                                size: 30.0,
                              ),
                              countBuilder: (count) => Text(
                                count.toString(),
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      font: GoogleFonts.montserrat(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                      fontSize: 25.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                              ),
                              count: _model.countControllerValue ??= 1,
                              updateCount: (count) async {
                                safeSetState(
                                    () => _model.countControllerValue = count);
                                _model.updateProductStruct(
                                  (e) => e..count = _model.countControllerValue,
                                );
                                safeSetState(() {});
                              },
                              stepSize: 1,
                              minimum: 1,
                              maximum: 20,
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                            ),
                          ),
                        ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 40.0),
                        child: FFButtonWidget(
                          onPressed: ((ProductsGroup.singleProductCall
                                          .data(
                                            rowSingleProductResponse.jsonBody,
                                          )!
                                          .groupModifications
                                          .length >
                                      0) &&
                                  (_model.product?.modification.length !=
                                      ProductsGroup.singleProductCall
                                          .data(
                                            rowSingleProductResponse.jsonBody,
                                          )
                                          ?.groupModifications
                                          .length))
                              ? null
                              : () async {
                                  if (FFAppState()
                                      .OrderItems
                                      .contains(OrderProductStruct(
                                        id: widget.productId,
                                        count: widget.isFree
                                            ? 1
                                            : _model.countControllerValue,
                                        modification:
                                            _model.product?.modification,
                                        productName: ProductsGroup
                                            .singleProductCall
                                            .data(
                                              rowSingleProductResponse.jsonBody,
                                            )
                                            ?.productName,
                                        granTotal: valueOrDefault<String>(
                                          functions.formatCurrency(
                                              ProductsGroup.singleProductCall
                                                  .data(
                                                    rowSingleProductResponse
                                                        .jsonBody,
                                                  )!
                                                  .spots
                                                  .firstOrNull!
                                                  .price,
                                              _model.extra),
                                          '\$0',
                                        ),
                                        unitaryPrice: functions.stringToNumber(
                                            valueOrDefault<String>(
                                          functions.formatCurrency(
                                              ProductsGroup.singleProductCall
                                                  .data(
                                                    rowSingleProductResponse
                                                        .jsonBody,
                                                  )!
                                                  .spots
                                                  .firstOrNull!
                                                  .price,
                                              _model.extra),
                                          '\$0',
                                        )),
                                        categoryId: ProductsGroup
                                            .singleProductCall
                                            .data(
                                              rowSingleProductResponse.jsonBody,
                                            )
                                            ?.menuCategoryId,
                                        photo: ProductsGroup.singleProductCall
                                            .data(
                                              rowSingleProductResponse.jsonBody,
                                            )
                                            ?.photo,
                                        isFree: widget.isFree,
                                        price: widget.isFree
                                            ? 0.0
                                            : ((double.parse(ProductsGroup
                                                    .singleProductCall
                                                    .data(
                                                      rowSingleProductResponse
                                                          .jsonBody,
                                                    )!
                                                    .spots
                                                    .firstOrNull!
                                                    .price) /
                                                100)),
                                      ))) {
                                    FFAppState().updateOrderItemsAtIndex(
                                      functions.findIndexInOrder(
                                          FFAppState().OrderItems.toList(),
                                          OrderProductStruct(
                                            id: widget.productId,
                                            count: widget.isFree
                                                ? 1
                                                : _model.countControllerValue,
                                            modification:
                                                _model.product?.modification,
                                            productName:
                                                ProductsGroup.singleProductCall
                                                    .data(
                                                      rowSingleProductResponse
                                                          .jsonBody,
                                                    )
                                                    ?.productName,
                                            granTotal: valueOrDefault<String>(
                                              functions.formatCurrency(
                                                  ProductsGroup
                                                      .singleProductCall
                                                      .data(
                                                        rowSingleProductResponse
                                                            .jsonBody,
                                                      )!
                                                      .spots
                                                      .firstOrNull!
                                                      .price,
                                                  _model.extra),
                                              '\$0',
                                            ),
                                            unitaryPrice:
                                                functions.stringToNumber(
                                                    valueOrDefault<String>(
                                              functions.formatCurrency(
                                                  ProductsGroup
                                                      .singleProductCall
                                                      .data(
                                                        rowSingleProductResponse
                                                            .jsonBody,
                                                      )!
                                                      .spots
                                                      .firstOrNull!
                                                      .price,
                                                  _model.extra),
                                              '\$0',
                                            )),
                                            categoryId:
                                                ProductsGroup.singleProductCall
                                                    .data(
                                                      rowSingleProductResponse
                                                          .jsonBody,
                                                    )
                                                    ?.menuCategoryId,
                                            photo:
                                                ProductsGroup.singleProductCall
                                                    .data(
                                                      rowSingleProductResponse
                                                          .jsonBody,
                                                    )
                                                    ?.photo,
                                            isFree: widget.isFree,
                                            price: widget.isFree
                                                ? 0.0
                                                : ((double.parse(ProductsGroup
                                                        .singleProductCall
                                                        .data(
                                                          rowSingleProductResponse
                                                              .jsonBody,
                                                        )!
                                                        .spots
                                                        .firstOrNull!
                                                        .price) /
                                                    100)),
                                          )),
                                      (e) => e
                                        ..incrementCount(
                                            _model.countControllerValue!)
                                        ..discount = FFAppState()
                                                    .Coupon
                                                    .products
                                                    .where((e) =>
                                                        e == widget.productId)
                                                    .toList()
                                                    .length >
                                                0
                                            ? FFAppState().Coupon.discount
                                            : 0.0,
                                    );
                                    FFAppState().update(() {});
                                  } else {
                                    FFAppState()
                                        .addToOrderItems(OrderProductStruct(
                                      id: widget.productId,
                                      count: widget.isFree
                                          ? 1
                                          : _model.countControllerValue,
                                      modification:
                                          _model.product?.modification,
                                      productName: ProductsGroup
                                          .singleProductCall
                                          .data(
                                            rowSingleProductResponse.jsonBody,
                                          )
                                          ?.productName,
                                      granTotal: valueOrDefault<String>(
                                        functions.formatCurrency(
                                            ProductsGroup.singleProductCall
                                                .data(
                                                  rowSingleProductResponse
                                                      .jsonBody,
                                                )!
                                                .spots
                                                .firstOrNull!
                                                .price,
                                            _model.extra),
                                        '\$0',
                                      ),
                                      unitaryPrice: functions.stringToNumber(
                                          valueOrDefault<String>(
                                        functions.formatCurrency(
                                            ProductsGroup.singleProductCall
                                                .data(
                                                  rowSingleProductResponse
                                                      .jsonBody,
                                                )!
                                                .spots
                                                .firstOrNull!
                                                .price,
                                            _model.extra),
                                        '\$0',
                                      )),
                                      categoryId: ProductsGroup
                                          .singleProductCall
                                          .data(
                                            rowSingleProductResponse.jsonBody,
                                          )
                                          ?.menuCategoryId,
                                      photo: ProductsGroup.singleProductCall
                                          .data(
                                            rowSingleProductResponse.jsonBody,
                                          )
                                          ?.photo,
                                      isFree: widget.isFree,
                                      price: widget.isFree
                                          ? 0.0
                                          : ((double.parse(ProductsGroup
                                                  .singleProductCall
                                                  .data(
                                                    rowSingleProductResponse
                                                        .jsonBody,
                                                  )!
                                                  .spots
                                                  .firstOrNull!
                                                  .price) /
                                              100)),
                                      nodiscount: ProductsGroup
                                          .singleProductCall
                                          .data(
                                            rowSingleProductResponse.jsonBody,
                                          )
                                          ?.nodiscount,
                                      discount: FFAppState()
                                                  .Coupon
                                                  .products
                                                  .where((e) =>
                                                      e == widget.productId)
                                                  .toList()
                                                  .length >
                                              0
                                          ? FFAppState().Coupon.discount
                                          : 0.0,
                                    ));
                                    FFAppState().update(() {});
                                  }

                                  if (!((ProductsGroup.singleProductCall
                                              .data(
                                                rowSingleProductResponse
                                                    .jsonBody,
                                              )
                                              ?.nodiscount ==
                                          '1') ||
                                      widget.isFree)) {
                                    if (FFAppState()
                                        .LastCustomerOrdersProducts
                                        .contains(
                                            LastCustomerOrdersProductsStruct(
                                          productId: widget.productId,
                                          count: _model.countControllerValue,
                                          isNew: true,
                                        ))) {
                                      FFAppState()
                                          .updateLastCustomerOrdersProductsAtIndex(
                                        functions.findIndexInLastItems(
                                            FFAppState()
                                                .LastCustomerOrdersProducts
                                                .toList(),
                                            LastCustomerOrdersProductsStruct(
                                              productId: widget.productId,
                                              count:
                                                  _model.countControllerValue,
                                              isNew: true,
                                            )),
                                        (e) => e
                                          ..incrementCount(
                                              _model.countControllerValue!),
                                      );
                                      FFAppState().update(() {});
                                    } else {
                                      FFAppState()
                                          .addToLastCustomerOrdersProducts(
                                              LastCustomerOrdersProductsStruct(
                                        productId: widget.productId,
                                        count: _model.countControllerValue,
                                        isNew: true,
                                      ));
                                      FFAppState().update(() {});
                                    }
                                  }
                                  Navigator.pop(context);
                                },
                          text: 'Agregar al Pedido',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 45.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconAlignment: IconAlignment.start,
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).secondary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.montserrat(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                            disabledColor: Color(0x73ECB169),
                            disabledTextColor: Color(0x72FFFFFF),
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        text: 'Regresar',
                        icon: Icon(
                          FFIcons.karrowArcLeft,
                          size: 18.0,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 45.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconAlignment: IconAlignment.start,
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                font: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).accent4,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ].divide(SizedBox(width: 80.0)),
            );
          },
        ),
      ),
    );
  }
}
