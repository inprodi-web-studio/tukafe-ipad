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

import 'package:uuid/uuid.dart';
import 'package:zettle/zettle.dart';

Future<String> generatePayment(
  int amount,
  Future Function() onCancel,
) async {
  var uuid = Uuid();
  var referenceUuid = uuid.v4();

  var request = ZettlePaymentRequest(
      amount: amount,
      reference: referenceUuid,
      enableLogin: true,
      enableTipping: false,
      enableInstalments: false);

  try {
    await Zettle.requestPayment(request);
  } catch (error) {
    onCancel();
  }

  return referenceUuid;
}
