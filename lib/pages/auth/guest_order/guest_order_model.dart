import '/flutter_flow/flutter_flow_util.dart';
import 'guest_order_widget.dart' show GuestOrderWidget;
import 'package:flutter/material.dart';

class GuestOrderModel extends FlutterFlowModel<GuestOrderWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  String? _phoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa tu celular';
    }

    if (!RegExp('^[0-9]{10}\$').hasMatch(val)) {
      return 'Ingresa un celular válido';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    phoneTextControllerValidator = _phoneTextControllerValidator;
  }

  @override
  void dispose() {
    phoneFocusNode?.dispose();
    phoneTextController?.dispose();
  }
}
