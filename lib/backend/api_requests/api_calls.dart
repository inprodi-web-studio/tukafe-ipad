import 'dart:convert';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Products Group Code

class ProductsGroup {
  static String getBaseUrl({
    String? token = '182720:8145958cd583496ec02d4cd60b03bebf',
  }) =>
      'https://joinposter.com/api';
  static Map<String, String> headers = {};
  static ProductCategoriesCall productCategoriesCall = ProductCategoriesCall();
  static ProductsCall productsCall = ProductsCall();
  static SingleProductCall singleProductCall = SingleProductCall();
}

class ProductCategoriesCall {
  Future<ApiCallResponse> call({
    String? token = '182720:8145958cd583496ec02d4cd60b03bebf',
  }) async {
    final baseUrl = ProductsGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Product Categories',
      apiUrl: '$baseUrl/menu.getCategories',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<ProductCategoryStruct>? data(dynamic response) => (getJsonField(
        response,
        r'''$.response''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => ProductCategoryStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
}

class ProductsCall {
  Future<ApiCallResponse> call({
    String? token = '182720:8145958cd583496ec02d4cd60b03bebf',
  }) async {
    final baseUrl = ProductsGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Products',
      apiUrl: '$baseUrl/menu.getProducts',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<ProductStruct>? data(dynamic response) => (getJsonField(
        response,
        r'''$.response''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => ProductStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
}

class SingleProductCall {
  Future<ApiCallResponse> call({
    String? productId = '',
    String? token = '182720:8145958cd583496ec02d4cd60b03bebf',
  }) async {
    final baseUrl = ProductsGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Single Product',
      apiUrl: '$baseUrl/menu.getProduct',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
        'product_id': productId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  ProductStruct? data(dynamic response) =>
      ProductStruct.maybeFromMap(getJsonField(
        response,
        r'''$.response''',
      ));
}

/// End Products Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
