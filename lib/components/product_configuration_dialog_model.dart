import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_configuration_dialog_widget.dart'
    show ProductConfigurationDialogWidget;
import 'package:flutter/material.dart';

class ProductConfigurationDialogModel
    extends FlutterFlowModel<ProductConfigurationDialogWidget> {
  ///  Local state fields for this component.

  OrderProductStruct? product;
  void updateProductStruct(Function(OrderProductStruct) updateFn) {
    updateFn(product ??= OrderProductStruct());
  }

  double extra = 0.0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Modificators widget.
  PageController? modificatorsController;

  int get modificatorsCurrentIndex => modificatorsController != null &&
          modificatorsController!.hasClients &&
          modificatorsController!.page != null
      ? modificatorsController!.page!.round()
      : 0;
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
