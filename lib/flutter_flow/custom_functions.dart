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

int findIndexInLastItems(
  List<LastCustomerOrdersProductsStruct> list,
  LastCustomerOrdersProductsStruct json,
) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == json) {
      return i; // Return the index if a match is found
    }
  }
  return -1;
}

double stringToNumber(String value) {
  return double.parse(value.replaceAll(RegExp(r'[^0-9.]'), ''));
}

double sumUnitaryPrices(List<OrderProductStruct> items) {
  return items.fold(0.0, (sum, item) => sum + (item.unitaryPrice * item.count));
}

List<dynamic> parseOrderArray(
  List<OrderProductStruct> items,
  bool isOwn,
) {
  return items.map((item) {
    if (isOwn) {
      return {
        "product_id": item.id,
        "count": item.count,
        "modificators": (item.modification as List)
            .map((mod) => {
                  "modificator_id": mod.id,
                  "count": mod.count,
                })
            .toList(),
        "category_id": item.categoryId
      };
    }

    double totalPrice =
        item.price + item.modification.fold(0, (sum, item) => sum + item.price);

    return {
      "id": item.id,
      "price": totalPrice,
      "count": item.count,
      "comment": item.comment,
      ...(item.isFree ? {"price": 0} : {}),
      "modification": (item.modification as List)
          .map((mod) => {
                "id": mod.id,
                "count": mod.count,
              })
          .toList(),
    };
  }).toList();
}

int sumProductsCounts(List<LastCustomerOrdersProductsStruct> products) {
  return products.fold(0, (sum, item) => sum + (item.count ?? 0));
}

int sustractNumbers(
  int number1,
  int numbe2,
) {
  // receive two numbers and return de substraction of both
  return number1 - numbe2;
}

List<LastCustomerOrdersProductsStruct> parseRewardsItems(
    List<LastCustomerOrdersProductsStruct> items) {
  List<LastCustomerOrdersProductsStruct> result = [];
  int totalCount = 0;

  for (var item in items) {
    if (totalCount + item.count <= 4) {
      result.add(item);
      totalCount += item.count;
    } else {
      break; // Detiene el proceso si se excede el límite
    }
  }

  return result;
}

int findIndexInOrder(
  List<OrderProductStruct> list,
  OrderProductStruct json,
) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == json) {
      return i; // Return the index if a match is found
    }
  }
  return -1;
}

List<dynamic> parseWorkArray(
  List<OrderProductStruct> items,
  String customer,
) {
  return items.map((item) {
    return {
      "customer": customer,
      "product": item.productName,
      "modificators": item.modification.map((mod) {
        return {"value": mod.name};
      }).toList(),
      "count": item.count
    };
  }).toList();
}
