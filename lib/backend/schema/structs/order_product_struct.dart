// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderProductStruct extends BaseStruct {
  OrderProductStruct({
    int? count,
    String? comment,
    List<OrderProductModificationStruct>? modification,
    String? id,
    String? productName,
    String? granTotal,
    double? unitaryPrice,
  })  : _count = count,
        _comment = comment,
        _modification = modification,
        _id = id,
        _productName = productName,
        _granTotal = granTotal,
        _unitaryPrice = unitaryPrice;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) => _count = val;

  void incrementCount(int amount) => count = count + amount;

  bool hasCount() => _count != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  set comment(String? val) => _comment = val;

  bool hasComment() => _comment != null;

  // "modification" field.
  List<OrderProductModificationStruct>? _modification;
  List<OrderProductModificationStruct> get modification =>
      _modification ?? const [];
  set modification(List<OrderProductModificationStruct>? val) =>
      _modification = val;

  void updateModification(
      Function(List<OrderProductModificationStruct>) updateFn) {
    updateFn(_modification ??= []);
  }

  bool hasModification() => _modification != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;

  bool hasProductName() => _productName != null;

  // "granTotal" field.
  String? _granTotal;
  String get granTotal => _granTotal ?? '';
  set granTotal(String? val) => _granTotal = val;

  bool hasGranTotal() => _granTotal != null;

  // "unitaryPrice" field.
  double? _unitaryPrice;
  double get unitaryPrice => _unitaryPrice ?? 0.0;
  set unitaryPrice(double? val) => _unitaryPrice = val;

  void incrementUnitaryPrice(double amount) =>
      unitaryPrice = unitaryPrice + amount;

  bool hasUnitaryPrice() => _unitaryPrice != null;

  static OrderProductStruct fromMap(Map<String, dynamic> data) =>
      OrderProductStruct(
        count: castToType<int>(data['count']),
        comment: data['comment'] as String?,
        modification: getStructList(
          data['modification'],
          OrderProductModificationStruct.fromMap,
        ),
        id: data['id'] as String?,
        productName: data['productName'] as String?,
        granTotal: data['granTotal'] as String?,
        unitaryPrice: castToType<double>(data['unitaryPrice']),
      );

  static OrderProductStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderProductStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'count': _count,
        'comment': _comment,
        'modification': _modification?.map((e) => e.toMap()).toList(),
        'id': _id,
        'productName': _productName,
        'granTotal': _granTotal,
        'unitaryPrice': _unitaryPrice,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'count': serializeParam(
          _count,
          ParamType.int,
        ),
        'comment': serializeParam(
          _comment,
          ParamType.String,
        ),
        'modification': serializeParam(
          _modification,
          ParamType.DataStruct,
          isList: true,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'productName': serializeParam(
          _productName,
          ParamType.String,
        ),
        'granTotal': serializeParam(
          _granTotal,
          ParamType.String,
        ),
        'unitaryPrice': serializeParam(
          _unitaryPrice,
          ParamType.double,
        ),
      }.withoutNulls;

  static OrderProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderProductStruct(
        count: deserializeParam(
          data['count'],
          ParamType.int,
          false,
        ),
        comment: deserializeParam(
          data['comment'],
          ParamType.String,
          false,
        ),
        modification: deserializeStructParam<OrderProductModificationStruct>(
          data['modification'],
          ParamType.DataStruct,
          true,
          structBuilder: OrderProductModificationStruct.fromSerializableMap,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        productName: deserializeParam(
          data['productName'],
          ParamType.String,
          false,
        ),
        granTotal: deserializeParam(
          data['granTotal'],
          ParamType.String,
          false,
        ),
        unitaryPrice: deserializeParam(
          data['unitaryPrice'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'OrderProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is OrderProductStruct &&
        count == other.count &&
        comment == other.comment &&
        listEquality.equals(modification, other.modification) &&
        id == other.id &&
        productName == other.productName &&
        granTotal == other.granTotal &&
        unitaryPrice == other.unitaryPrice;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [count, comment, modification, id, productName, granTotal, unitaryPrice]);
}

OrderProductStruct createOrderProductStruct({
  int? count,
  String? comment,
  String? id,
  String? productName,
  String? granTotal,
  double? unitaryPrice,
}) =>
    OrderProductStruct(
      count: count,
      comment: comment,
      id: id,
      productName: productName,
      granTotal: granTotal,
      unitaryPrice: unitaryPrice,
    );
