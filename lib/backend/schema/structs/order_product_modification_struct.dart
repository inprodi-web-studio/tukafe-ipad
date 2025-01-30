// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderProductModificationStruct extends BaseStruct {
  OrderProductModificationStruct({
    int? id,
    int? count,
    String? name,
    double? price,
  })  : _id = id,
        _count = count,
        _name = name,
        _price = price;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) => _count = val;

  void incrementCount(int amount) => count = count + amount;

  bool hasCount() => _count != null;

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

  static OrderProductModificationStruct fromMap(Map<String, dynamic> data) =>
      OrderProductModificationStruct(
        id: castToType<int>(data['id']),
        count: castToType<int>(data['count']),
        name: data['name'] as String?,
        price: castToType<double>(data['price']),
      );

  static OrderProductModificationStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? OrderProductModificationStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'count': _count,
        'name': _name,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'count': serializeParam(
          _count,
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

  static OrderProductModificationStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OrderProductModificationStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        count: deserializeParam(
          data['count'],
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
  String toString() => 'OrderProductModificationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrderProductModificationStruct &&
        id == other.id &&
        count == other.count &&
        name == other.name &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([id, count, name, price]);
}

OrderProductModificationStruct createOrderProductModificationStruct({
  int? id,
  int? count,
  String? name,
  double? price,
}) =>
    OrderProductModificationStruct(
      id: id,
      count: count,
      name: name,
      price: price,
    );
