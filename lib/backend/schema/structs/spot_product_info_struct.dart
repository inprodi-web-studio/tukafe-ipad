// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SpotProductInfoStruct extends BaseStruct {
  SpotProductInfoStruct({
    String? spotId,
    String? price,
  })  : _spotId = spotId,
        _price = price;

  // "spot_id" field.
  String? _spotId;
  String get spotId => _spotId ?? '';
  set spotId(String? val) => _spotId = val;

  bool hasSpotId() => _spotId != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;

  bool hasPrice() => _price != null;

  static SpotProductInfoStruct fromMap(Map<String, dynamic> data) =>
      SpotProductInfoStruct(
        spotId: data['spot_id'] as String?,
        price: data['price'] as String?,
      );

  static SpotProductInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? SpotProductInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'spot_id': _spotId,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'spot_id': serializeParam(
          _spotId,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.String,
        ),
      }.withoutNulls;

  static SpotProductInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      SpotProductInfoStruct(
        spotId: deserializeParam(
          data['spot_id'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SpotProductInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SpotProductInfoStruct &&
        spotId == other.spotId &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([spotId, price]);
}

SpotProductInfoStruct createSpotProductInfoStruct({
  String? spotId,
  String? price,
}) =>
    SpotProductInfoStruct(
      spotId: spotId,
      price: price,
    );
