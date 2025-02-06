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

Future initZettle() async {
  try {
    await Zettle.init(
      '674b875c-430d-4c95-8cfa-8f95ba29601b',
      '096e420a-302f-4f51-816d-c05570278871',
      'tukafeinplace://callback',
    );
  } catch (ex) {
    print(ex.toString());
  }
}
