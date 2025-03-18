// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:zettle/zettle.dart';

Future generatePayment(
  int amount,
  Future Function() onSuccess,
  Future Function() onCancel,
) async {
  var request = ZettlePaymentRequest(
      amount: amount,
      reference: "tukafe order",
      enableLogin: true,
      enableTipping: false,
      enableInstalments: false);

  try {
    final response = await Zettle.requestPayment(request);

    print("Status de la respuesta: ${response.status}");

    if (response.status == 'success') {
      onSuccess();
    } else {
      onCancel();
    }
  } catch (error) {
    onCancel();
  }
}
