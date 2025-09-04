import '/flutter_flow/flutter_flow_util.dart';
import 'branch_select_widget.dart' show BranchSelectWidget;
import 'package:flutter/material.dart';

class BranchSelectModel extends FlutterFlowModel<BranchSelectWidget> {
  ///  Local state fields for this component.

  bool canSelect = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
