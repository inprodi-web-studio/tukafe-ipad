// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductModificationStruct extends BaseStruct {
  ProductModificationStruct({
    int? dishModificationId,
    String? name,
    double? price,
  })  : _dishModificationId = dishModificationId,
        _name = name,
        _price = price;

  // "dish_modification_id" field.
  int? _dishModificationId;
  int get dishModificationId => _dishModificationId ?? 0;
  set dishModificationId(int? val) => _dishModificationId = val;

  void incrementDishModificationId(int amount) =>
      dishModificationId = dishModificationId + amount;

  bool hasDishModificationId() => _dishModificationId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  static ProductModificationStruct fromMap(Map<String, dynamic> data) =>
      ProductModificationStruct(
        dishModificationId: castToType<int>(data['dish_modification_id']),
        name: data['name'] as String?,
        price: castToType<double>(data['price']),
      );

  static ProductModificationStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductModificationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'dish_modification_id': _dishModificationId,
        'name': _name,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'dish_modification_id': serializeParam(
          _dishModificationId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
      }.withoutNulls;

  static ProductModificationStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProductModificationStruct(
        dishModificationId: deserializeParam(
          data['dish_modification_id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ProductModificationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductModificationStruct &&
        dishModificationId == other.dishModificationId &&
        name == other.name &&
        price == other.price;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([dishModificationId, name, price]);
}

ProductModificationStruct createProductModificationStruct({
  int? dishModificationId,
  String? name,
  double? price,
}) =>
    ProductModificationStruct(
      dishModificationId: dishModificationId,
      name: name,
      price: price,
    );
