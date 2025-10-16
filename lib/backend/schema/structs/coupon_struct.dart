// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CouponStruct extends BaseStruct {
  CouponStruct({
    int? id,
    String? type,
    double? discount,
    List<String>? products,
    String? code,
  })  : _id = id,
        _type = type,
        _discount = discount,
        _products = products,
        _code = code;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "discount" field.
  double? _discount;
  double get discount => _discount ?? 0.0;
  set discount(double? val) => _discount = val;

  void incrementDiscount(double amount) => discount = discount + amount;

  bool hasDiscount() => _discount != null;

  // "products" field.
  List<String>? _products;
  List<String> get products => _products ?? const [];
  set products(List<String>? val) => _products = val;

  void updateProducts(Function(List<String>) updateFn) {
    updateFn(_products ??= []);
  }

  bool hasProducts() => _products != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  static CouponStruct fromMap(Map<String, dynamic> data) => CouponStruct(
        id: castToType<int>(data['id']),
        type: data['type'] as String?,
        discount: castToType<double>(data['discount']),
        products: getDataList(data['products']),
        code: data['code'] as String?,
      );

  static CouponStruct? maybeFromMap(dynamic data) =>
      data is Map ? CouponStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'type': _type,
        'discount': _discount,
        'products': _products,
        'code': _code,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'discount': serializeParam(
          _discount,
          ParamType.double,
        ),
        'products': serializeParam(
          _products,
          ParamType.String,
          isList: true,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
      }.withoutNulls;

  static CouponStruct fromSerializableMap(Map<String, dynamic> data) =>
      CouponStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        discount: deserializeParam(
          data['discount'],
          ParamType.double,
          false,
        ),
        products: deserializeParam<String>(
          data['products'],
          ParamType.String,
          true,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CouponStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CouponStruct &&
        id == other.id &&
        type == other.type &&
        discount == other.discount &&
        listEquality.equals(products, other.products) &&
        code == other.code;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, type, discount, products, code]);
}

CouponStruct createCouponStruct({
  int? id,
  String? type,
  double? discount,
  String? code,
}) =>
    CouponStruct(
      id: id,
      type: type,
      discount: discount,
      code: code,
    );
