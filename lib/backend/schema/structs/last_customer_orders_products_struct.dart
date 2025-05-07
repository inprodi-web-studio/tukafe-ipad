// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LastCustomerOrdersProductsStruct extends BaseStruct {
  LastCustomerOrdersProductsStruct({
    String? productId,
    int? count,
    bool? isNew,
    String? categoryId,
    int? id,
  })  : _productId = productId,
        _count = count,
        _isNew = isNew,
        _categoryId = categoryId,
        _id = id;

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

  // "category_id" field.
  String? _categoryId;
  String get categoryId => _categoryId ?? '';
  set categoryId(String? val) => _categoryId = val;

  bool hasCategoryId() => _categoryId != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  static LastCustomerOrdersProductsStruct fromMap(Map<String, dynamic> data) =>
      LastCustomerOrdersProductsStruct(
        productId: data['product_id'] as String?,
        count: castToType<int>(data['count']),
        isNew: data['isNew'] as bool?,
        categoryId: data['category_id'] as String?,
        id: castToType<int>(data['id']),
      );

  static LastCustomerOrdersProductsStruct? maybeFromMap(dynamic data) => data
          is Map
      ? LastCustomerOrdersProductsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'product_id': _productId,
        'count': _count,
        'isNew': _isNew,
        'category_id': _categoryId,
        'id': _id,
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
        'category_id': serializeParam(
          _categoryId,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
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
        categoryId: deserializeParam(
          data['category_id'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
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
        isNew == other.isNew &&
        categoryId == other.categoryId &&
        id == other.id;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([productId, count, isNew, categoryId, id]);
}

LastCustomerOrdersProductsStruct createLastCustomerOrdersProductsStruct({
  String? productId,
  int? count,
  bool? isNew,
  String? categoryId,
  int? id,
}) =>
    LastCustomerOrdersProductsStruct(
      productId: productId,
      count: count,
      isNew: isNew,
      categoryId: categoryId,
      id: id,
    );
