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
      apiUrl: '${baseUrl}/menu.getCategories',
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
      apiUrl: '${baseUrl}/menu.getProducts',
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
      apiUrl: '${baseUrl}/menu.getProduct',
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

/// Start Order Group Code

class OrderGroup {
  static String getBaseUrl({
    String? token = '182720:8145958cd583496ec02d4cd60b03bebf',
  }) =>
      'https://joinposter.com/api';
  static Map<String, String> headers = {};
  static CreateOrderCall createOrderCall = CreateOrderCall();
  static CloseOrderCall closeOrderCall = CloseOrderCall();
}

class CreateOrderCall {
  Future<ApiCallResponse> call({
    dynamic customerJson,
    dynamic productsJson,
    String? comment = '',
    String? token = '182720:8145958cd583496ec02d4cd60b03bebf',
  }) async {
    final baseUrl = OrderGroup.getBaseUrl(
      token: token,
    );

    final customer = _serializeJson(customerJson);
    final products = _serializeJson(productsJson, true);
    final ffApiRequestBody = '''
{
  "spotId": 1,
  "serviceMode": 2,
  "autoAccept": true,
  "client": ${customer},
  "comment": "${escapeStringForJson(comment)}",
  "products": ${products}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Order',
      apiUrl: '${baseUrl}/orders?token=${token}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CloseOrderCall {
  Future<ApiCallResponse> call({
    int? orderId,
    int? amount,
    String? token = '182720:8145958cd583496ec02d4cd60b03bebf',
  }) async {
    final baseUrl = OrderGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "spot_id": 1,
  "spot_tablet_id": 1,
  "transaction_id": ${orderId},
  "payed_card": ${amount}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Close Order',
      apiUrl: '${baseUrl}/transactions.closeTransaction?token=${token}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Order Group Code

/// Start Customers Group Code

class CustomersGroup {
  static String getBaseUrl({
    String? token = '182720:8145958cd583496ec02d4cd60b03bebf',
  }) =>
      'https://joinposter.com/api';
  static Map<String, String> headers = {};
  static FindByPhoneCall findByPhoneCall = FindByPhoneCall();
  static CreatePhoneCustomerCall createPhoneCustomerCall =
      CreatePhoneCustomerCall();
}

class FindByPhoneCall {
  Future<ApiCallResponse> call({
    String? phone = '',
    String? token = '182720:8145958cd583496ec02d4cd60b03bebf',
  }) async {
    final baseUrl = CustomersGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Find By Phone',
      apiUrl: '${baseUrl}/clients.getClients',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
        'phone': phone,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.response''',
        true,
      ) as List?;
  dynamic customer(dynamic response) => getJsonField(
        response,
        r'''$.response[0]''',
      );
}

class CreatePhoneCustomerCall {
  Future<ApiCallResponse> call({
    String? phone = '',
    String? token = '182720:8145958cd583496ec02d4cd60b03bebf',
  }) async {
    final baseUrl = CustomersGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "client_name": "phone_customer",
  "client_sex": 0,
  "client_groups_id_client": 1,
  "phone": "${escapeStringForJson(phone)}",
  "skip_phone_validation": true
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Phone Customer',
      apiUrl: '${baseUrl}/clients.createClient?token=${token}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? customerId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response''',
      ));
}

/// End Customers Group Code

/// Start Own Routes Group Code

class OwnRoutesGroup {
  static String getBaseUrl({
    String? token =
        '78445fbc64d40826408f50653f9692f59da74b601bd3ec841acab680a038a1d81183ed56aa6c0a71790a3c142713274384030d61af59ab7420b1d2b330e93307b598ad67e7a2793e72b8eb007ae32f0237606997b7ae5053f28be4edd943a35c1293fde44436c4744f3c8ef1ab935b221911b2bc2dd21a639b8a6d443580b536',
  }) =>
      'https://tukafe-api-49kty.ondigitalocean.app/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static GetCustomerLastOrdersCall getCustomerLastOrdersCall =
      GetCustomerLastOrdersCall();
  static CreateCustomerOrderCall createCustomerOrderCall =
      CreateCustomerOrderCall();
  static CreateWorkCall createWorkCall = CreateWorkCall();
}

class GetCustomerLastOrdersCall {
  Future<ApiCallResponse> call({
    String? customerId = '',
    String? token =
        '78445fbc64d40826408f50653f9692f59da74b601bd3ec841acab680a038a1d81183ed56aa6c0a71790a3c142713274384030d61af59ab7420b1d2b330e93307b598ad67e7a2793e72b8eb007ae32f0237606997b7ae5053f28be4edd943a35c1293fde44436c4744f3c8ef1ab935b221911b2bc2dd21a639b8a6d443580b536',
  }) async {
    final baseUrl = OwnRoutesGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Customer Last Orders',
      apiUrl: '${baseUrl}/orders',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'populate': "*",
        'filters[customer_id]': customerId,
        'pagination[limit]': 5,
        'filters[isUsed]': false,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<LastCustomerOrdersProductsStruct>? items(dynamic response) =>
      (getJsonField(
        response,
        r'''$.data[:].products[0]''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => LastCustomerOrdersProductsStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
}

class CreateCustomerOrderCall {
  Future<ApiCallResponse> call({
    String? customerId = '',
    dynamic productsJson,
    bool? hasFree,
    String? token =
        '78445fbc64d40826408f50653f9692f59da74b601bd3ec841acab680a038a1d81183ed56aa6c0a71790a3c142713274384030d61af59ab7420b1d2b330e93307b598ad67e7a2793e72b8eb007ae32f0237606997b7ae5053f28be4edd943a35c1293fde44436c4744f3c8ef1ab935b221911b2bc2dd21a639b8a6d443580b536',
  }) async {
    final baseUrl = OwnRoutesGroup.getBaseUrl(
      token: token,
    );

    final products = _serializeJson(productsJson, true);
    final ffApiRequestBody = '''
{
  "customer_id": "${escapeStringForJson(customerId)}",
  "products": ${products},
  "hasFree": ${hasFree}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Customer Order',
      apiUrl: '${baseUrl}/orders',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateWorkCall {
  Future<ApiCallResponse> call({
    dynamic itemsJson,
    String? token =
        '78445fbc64d40826408f50653f9692f59da74b601bd3ec841acab680a038a1d81183ed56aa6c0a71790a3c142713274384030d61af59ab7420b1d2b330e93307b598ad67e7a2793e72b8eb007ae32f0237606997b7ae5053f28be4edd943a35c1293fde44436c4744f3c8ef1ab935b221911b2bc2dd21a639b8a6d443580b536',
  }) async {
    final baseUrl = OwnRoutesGroup.getBaseUrl(
      token: token,
    );

    final items = _serializeJson(itemsJson, true);
    final ffApiRequestBody = '''
${items}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Work',
      apiUrl: '${baseUrl}/works',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Own Routes Group Code

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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
