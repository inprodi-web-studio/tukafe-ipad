// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderStruct extends BaseStruct {
  OrderStruct({
    int? spotId,
    int? serviceMode,
    bool? autoAccept,
    CustomerStruct? client,
    List<ProductStruct>? products,
  })  : _spotId = spotId,
        _serviceMode = serviceMode,
        _autoAccept = autoAccept,
        _client = client,
        _products = products;

  // "spot_id" field.
  int? _spotId;
  int get spotId => _spotId ?? 0;
  set spotId(int? val) => _spotId = val;

  void incrementSpotId(int amount) => spotId = spotId + amount;

  bool hasSpotId() => _spotId != null;

  // "serviceMode" field.
  int? _serviceMode;
  int get serviceMode => _serviceMode ?? 2;
  set serviceMode(int? val) => _serviceMode = val;

  void incrementServiceMode(int amount) => serviceMode = serviceMode + amount;

  bool hasServiceMode() => _serviceMode != null;

  // "autoAccept" field.
  bool? _autoAccept;
  bool get autoAccept => _autoAccept ?? true;
  set autoAccept(bool? val) => _autoAccept = val;

  bool hasAutoAccept() => _autoAccept != null;

  // "client" field.
  CustomerStruct? _client;
  CustomerStruct get client => _client ?? CustomerStruct();
  set client(CustomerStruct? val) => _client = val;

  void updateClient(Function(CustomerStruct) updateFn) {
    updateFn(_client ??= CustomerStruct());
  }

  bool hasClient() => _client != null;

  // "products" field.
  List<ProductStruct>? _products;
  List<ProductStruct> get products => _products ?? const [];
  set products(List<ProductStruct>? val) => _products = val;

  void updateProducts(Function(List<ProductStruct>) updateFn) {
    updateFn(_products ??= []);
  }

  bool hasProducts() => _products != null;

  static OrderStruct fromMap(Map<String, dynamic> data) => OrderStruct(
        spotId: castToType<int>(data['spot_id']),
        serviceMode: castToType<int>(data['serviceMode']),
        autoAccept: data['autoAccept'] as bool?,
        client: data['client'] is CustomerStruct
            ? data['client']
            : CustomerStruct.maybeFromMap(data['client']),
        products: getStructList(
          data['products'],
          ProductStruct.fromMap,
        ),
      );

  static OrderStruct? maybeFromMap(dynamic data) =>
      data is Map ? OrderStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'spot_id': _spotId,
        'serviceMode': _serviceMode,
        'autoAccept': _autoAccept,
        'client': _client?.toMap(),
        'products': _products?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'spot_id': serializeParam(
          _spotId,
          ParamType.int,
        ),
        'serviceMode': serializeParam(
          _serviceMode,
          ParamType.int,
        ),
        'autoAccept': serializeParam(
          _autoAccept,
          ParamType.bool,
        ),
        'client': serializeParam(
          _client,
          ParamType.DataStruct,
        ),
        'products': serializeParam(
          _products,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static OrderStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderStruct(
        spotId: deserializeParam(
          data['spot_id'],
          ParamType.int,
          false,
        ),
        serviceMode: deserializeParam(
          data['serviceMode'],
          ParamType.int,
          false,
        ),
        autoAccept: deserializeParam(
          data['autoAccept'],
          ParamType.bool,
          false,
        ),
        client: deserializeStructParam(
          data['client'],
          ParamType.DataStruct,
          false,
          structBuilder: CustomerStruct.fromSerializableMap,
        ),
        products: deserializeStructParam<ProductStruct>(
          data['products'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'OrderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is OrderStruct &&
        spotId == other.spotId &&
        serviceMode == other.serviceMode &&
        autoAccept == other.autoAccept &&
        client == other.client &&
        listEquality.equals(products, other.products);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([spotId, serviceMode, autoAccept, client, products]);
}

OrderStruct createOrderStruct({
  int? spotId,
  int? serviceMode,
  bool? autoAccept,
  CustomerStruct? client,
}) =>
    OrderStruct(
      spotId: spotId,
      serviceMode: serviceMode,
      autoAccept: autoAccept,
      client: client ?? CustomerStruct(),
    );
