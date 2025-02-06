import '/backend/api_requests/api_calls.dart';
import '/components/product_count_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_widget.dart' show OrderWidget;
import 'package:flutter/material.dart';

class OrderModel extends FlutterFlowModel<OrderWidget> {
  ///  Local state fields for this page.

  String path = 'categories';

  String? entity;

  String? subEntity;

  ///  State fields for stateful widgets in this page.

  // Models for ProductCount dynamic component.
  late FlutterFlowDynamicModels<ProductCountModel> productCountModels;
  // Stores action output result for [Backend Call - API (Create Order)] action in Button widget.
  ApiCallResponse? orderOutput;

  @override
  void initState(BuildContext context) {
    productCountModels = FlutterFlowDynamicModels(() => ProductCountModel());
  }

  @override
  void dispose() {
    productCountModels.dispose();
  }
}
