// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LastCustomerOrdersProductsStruct extends BaseStruct {
  LastCustomerOrdersProductsStruct({
    String? productId,
    int? count,
    bool? isNew,
  })  : _productId = productId,
        _count = count,
        _isNew = isNew;

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  set productId(String? val) => _productId = val;

  bool hasProductId() => _productId != null;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) => _count = val;

  void incrementCount(int amount) => count = count + amount;

  bool hasCount() => _count != null;

  // "isNew" field.
  bool? _isNew;
  bool get isNew => _isNew ?? false;
  set isNew(bool? val) => _isNew = val;

  bool hasIsNew() => _isNew != null;

  static LastCustomerOrdersProductsStruct fromMap(Map<String, dynamic> data) =>
      LastCustomerOrdersProductsStruct(
        productId: data['product_id'] as String?,
        count: castToType<int>(data['count']),
        isNew: data['isNew'] as bool?,
      );

  static LastCustomerOrdersProductsStruct? maybeFromMap(dynamic data) => data
          is Map
      ? LastCustomerOrdersProductsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'product_id': _productId,
        'count': _count,
        'isNew': _isNew,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'product_id': serializeParam(
          _productId,
          ParamType.String,
        ),
        'count': serializeParam(
          _count,
          ParamType.int,
        ),
        'isNew': serializeParam(
          _isNew,
          ParamType.bool,
        ),
      }.withoutNulls;

  static LastCustomerOrdersProductsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LastCustomerOrdersProductsStruct(
        productId: deserializeParam(
          data['product_id'],
          ParamType.String,
          false,
        ),
        count: deserializeParam(
          data['count'],
          ParamType.int,
          false,
        ),
        isNew: deserializeParam(
          data['isNew'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'LastCustomerOrdersProductsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LastCustomerOrdersProductsStruct &&
        productId == other.productId &&
        count == other.count &&
        isNew == other.isNew;
  }

  @override
  int get hashCode => const ListEquality().hash([productId, count, isNew]);
}

LastCustomerOrdersProductsStruct createLastCustomerOrdersProductsStruct({
  String? productId,
  int? count,
  bool? isNew,
}) =>
    LastCustomerOrdersProductsStruct(
      productId: productId,
      count: count,
      isNew: isNew,
    );
