import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reward_info_dialog_widget.dart' show RewardInfoDialogWidget;
import 'package:flutter/material.dart';

class RewardInfoDialogModel extends FlutterFlowModel<RewardInfoDialogWidget> {
  ///  Local state fields for this component.

  OrderProductStruct? product;
  void updateProductStruct(Function(OrderProductStruct) updateFn) {
    updateFn(product ??= OrderProductStruct());
  }

  double extra = 0.0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
