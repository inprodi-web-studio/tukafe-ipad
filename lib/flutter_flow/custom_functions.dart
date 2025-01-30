import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

String formatCurrency(
  String input,
  double? sum,
) {
  sum ??= 0; // Asignar 0 a sum si es null

  final number = int.tryParse(input) ?? 0;
  final naturalNumber = (number / 100) + sum;

  final formatter = NumberFormat.currency(symbol: "\$", decimalDigits: 2);
  return formatter.format(naturalNumber);
}

double stringToNumber(String value) {
  return double.parse(value.replaceAll(RegExp(r'[^0-9.]'), ''));
}

double sumUnitaryPrices(List<OrderProductStruct> items) {
  return items.fold(0.0, (sum, item) => sum + (item.unitaryPrice * item.count));
}
