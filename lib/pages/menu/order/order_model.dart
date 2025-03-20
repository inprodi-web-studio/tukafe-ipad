import '/backend/api_requests/api_calls.dart';
import '/components/orders_count_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'order_widget.dart' show OrderWidget;
import 'package:flutter/material.dart';

class OrderModel extends FlutterFlowModel<OrderWidget> {
  ///  Local state fields for this page.

  String path = 'categories';

  String? entity;

  String? subEntity;

  ///  State fields for stateful widgets in this page.

  // Model for OrdersCount component.
  late OrdersCountModel ordersCountModel;
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // Stores action output result for [Backend Call - API (Create Order)] action in Button widget.
  ApiCallResponse? orderOutputPromo2;
  // Stores action output result for [Backend Call - API (Close Order)] action in Button widget.
  ApiCallResponse? closePromoOrder2;
  // Stores action output result for [Backend Call - API (Create Order)] action in Button widget.
  ApiCallResponse? orderOutput2;
  // Stores action output result for [Backend Call - API (Close Order)] action in Button widget.
  ApiCallResponse? closeOrder2;
  // Stores action output result for [Backend Call - API (Create Work)] action in Button widget.
  ApiCallResponse? workOutput2;
  // Stores action output result for [Backend Call - API (Create Order)] action in Button widget.
  ApiCallResponse? orderOutputPromo;
  // Stores action output result for [Backend Call - API (Close Order)] action in Button widget.
  ApiCallResponse? closePromoOrder;
  // Stores action output result for [Backend Call - API (Create Order)] action in Button widget.
  ApiCallResponse? orderOutput;
  // Stores action output result for [Backend Call - API (Close Order)] action in Button widget.
  ApiCallResponse? closeOrder;
  // Stores action output result for [Backend Call - API (Create Work)] action in Button widget.
  ApiCallResponse? workOutput;

  @override
  void initState(BuildContext context) {
    ordersCountModel = createModel(context, () => OrdersCountModel());
  }

  @override
  void dispose() {
    ordersCountModel.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();
  }
}
