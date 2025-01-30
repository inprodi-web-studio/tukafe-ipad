// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductGroupModificationStruct extends BaseStruct {
  ProductGroupModificationStruct({
    int? dishModificationGroupId,
    String? name,
    int? numMin,
    int? numMax,
    int? type,
    List<ProductModificationStruct>? modifications,
  })  : _dishModificationGroupId = dishModificationGroupId,
        _name = name,
        _numMin = numMin,
        _numMax = numMax,
        _type = type,
        _modifications = modifications;

  // "dish_modification_group_id" field.
  int? _dishModificationGroupId;
  int get dishModificationGroupId => _dishModificationGroupId ?? 0;
  set dishModificationGroupId(int? val) => _dishModificationGroupId = val;

  void incrementDishModificationGroupId(int amount) =>
      dishModificationGroupId = dishModificationGroupId + amount;

  bool hasDishModificationGroupId() => _dishModificationGroupId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "num_min" field.
  int? _numMin;
  int get numMin => _numMin ?? 0;
  set numMin(int? val) => _numMin = val;

  void incrementNumMin(int amount) => numMin = numMin + amount;

  bool hasNumMin() => _numMin != null;

  // "num_max" field.
  int? _numMax;
  int get numMax => _numMax ?? 0;
  set numMax(int? val) => _numMax = val;

  void incrementNumMax(int amount) => numMax = numMax + amount;

  bool hasNumMax() => _numMax != null;

  // "type" field.
  int? _type;
  int get type => _type ?? 0;
  set type(int? val) => _type = val;

  void incrementType(int amount) => type = type + amount;

  bool hasType() => _type != null;

  // "modifications" field.
  List<ProductModificationStruct>? _modifications;
  List<ProductModificationStruct> get modifications =>
      _modifications ?? const [];
  set modifications(List<ProductModificationStruct>? val) =>
      _modifications = val;

  void updateModifications(Function(List<ProductModificationStruct>) updateFn) {
    updateFn(_modifications ??= []);
  }

  bool hasModifications() => _modifications != null;

  static ProductGroupModificationStruct fromMap(Map<String, dynamic> data) =>
      ProductGroupModificationStruct(
        dishModificationGroupId:
            castToType<int>(data['dish_modification_group_id']),
        name: data['name'] as String?,
        numMin: castToType<int>(data['num_min']),
        numMax: castToType<int>(data['num_max']),
        type: castToType<int>(data['type']),
        modifications: getStructList(
          data['modifications'],
          ProductModificationStruct.fromMap,
        ),
      );

  static ProductGroupModificationStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? ProductGroupModificationStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'dish_modification_group_id': _dishModificationGroupId,
        'name': _name,
        'num_min': _numMin,
        'num_max': _numMax,
        'type': _type,
        'modifications': _modifications?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'dish_modification_group_id': serializeParam(
          _dishModificationGroupId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'num_min': serializeParam(
          _numMin,
          ParamType.int,
        ),
        'num_max': serializeParam(
          _numMax,
          ParamType.int,
        ),
        'type': serializeParam(
          _type,
          ParamType.int,
        ),
        'modifications': serializeParam(
          _modifications,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ProductGroupModificationStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProductGroupModificationStruct(
        dishModificationGroupId: deserializeParam(
          data['dish_modification_group_id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        numMin: deserializeParam(
          data['num_min'],
          ParamType.int,
          false,
        ),
        numMax: deserializeParam(
          data['num_max'],
          ParamType.int,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.int,
          false,
        ),
        modifications: deserializeStructParam<ProductModificationStruct>(
          data['modifications'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductModificationStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProductGroupModificationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProductGroupModificationStruct &&
        dishModificationGroupId == other.dishModificationGroupId &&
        name == other.name &&
        numMin == other.numMin &&
        numMax == other.numMax &&
        type == other.type &&
        listEquality.equals(modifications, other.modifications);
  }

  @override
  int get hashCode => const ListEquality().hash(
      [dishModificationGroupId, name, numMin, numMax, type, modifications]);
}

ProductGroupModificationStruct createProductGroupModificationStruct({
  int? dishModificationGroupId,
  String? name,
  int? numMin,
  int? numMax,
  int? type,
}) =>
    ProductGroupModificationStruct(
      dishModificationGroupId: dishModificationGroupId,
      name: name,
      numMin: numMin,
      numMax: numMax,
      type: type,
    );
