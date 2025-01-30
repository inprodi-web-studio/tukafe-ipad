// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductStruct extends BaseStruct {
  ProductStruct({
    String? categoryName,
    String? productId,
    String? productName,
    List<SpotProductInfoStruct>? spots,
    List<ProductGroupModificationStruct>? groupModifications,
    String? menuCategoryId,
  })  : _categoryName = categoryName,
        _productId = productId,
        _productName = productName,
        _spots = spots,
        _groupModifications = groupModifications,
        _menuCategoryId = menuCategoryId;

  // "category_name" field.
  String? _categoryName;
  String get categoryName => _categoryName ?? '';
  set categoryName(String? val) => _categoryName = val;

  bool hasCategoryName() => _categoryName != null;

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  set productId(String? val) => _productId = val;

  bool hasProductId() => _productId != null;

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;

  bool hasProductName() => _productName != null;

  // "spots" field.
  List<SpotProductInfoStruct>? _spots;
  List<SpotProductInfoStruct> get spots => _spots ?? const [];
  set spots(List<SpotProductInfoStruct>? val) => _spots = val;

  void updateSpots(Function(List<SpotProductInfoStruct>) updateFn) {
    updateFn(_spots ??= []);
  }

  bool hasSpots() => _spots != null;

  // "group_modifications" field.
  List<ProductGroupModificationStruct>? _groupModifications;
  List<ProductGroupModificationStruct> get groupModifications =>
      _groupModifications ?? const [];
  set groupModifications(List<ProductGroupModificationStruct>? val) =>
      _groupModifications = val;

  void updateGroupModifications(
      Function(List<ProductGroupModificationStruct>) updateFn) {
    updateFn(_groupModifications ??= []);
  }

  bool hasGroupModifications() => _groupModifications != null;

  // "menu_category_id" field.
  String? _menuCategoryId;
  String get menuCategoryId => _menuCategoryId ?? '';
  set menuCategoryId(String? val) => _menuCategoryId = val;

  bool hasMenuCategoryId() => _menuCategoryId != null;

  static ProductStruct fromMap(Map<String, dynamic> data) => ProductStruct(
        categoryName: data['category_name'] as String?,
        productId: data['product_id'] as String?,
        productName: data['product_name'] as String?,
        spots: getStructList(
          data['spots'],
          SpotProductInfoStruct.fromMap,
        ),
        groupModifications: getStructList(
          data['group_modifications'],
          ProductGroupModificationStruct.fromMap,
        ),
        menuCategoryId: data['menu_category_id'] as String?,
      );

  static ProductStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'category_name': _categoryName,
        'product_id': _productId,
        'product_name': _productName,
        'spots': _spots?.map((e) => e.toMap()).toList(),
        'group_modifications':
            _groupModifications?.map((e) => e.toMap()).toList(),
        'menu_category_id': _menuCategoryId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'category_name': serializeParam(
          _categoryName,
          ParamType.String,
        ),
        'product_id': serializeParam(
          _productId,
          ParamType.String,
        ),
        'product_name': serializeParam(
          _productName,
          ParamType.String,
        ),
        'spots': serializeParam(
          _spots,
          ParamType.DataStruct,
          isList: true,
        ),
        'group_modifications': serializeParam(
          _groupModifications,
          ParamType.DataStruct,
          isList: true,
        ),
        'menu_category_id': serializeParam(
          _menuCategoryId,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductStruct(
        categoryName: deserializeParam(
          data['category_name'],
          ParamType.String,
          false,
        ),
        productId: deserializeParam(
          data['product_id'],
          ParamType.String,
          false,
        ),
        productName: deserializeParam(
          data['product_name'],
          ParamType.String,
          false,
        ),
        spots: deserializeStructParam<SpotProductInfoStruct>(
          data['spots'],
          ParamType.DataStruct,
          true,
          structBuilder: SpotProductInfoStruct.fromSerializableMap,
        ),
        groupModifications:
            deserializeStructParam<ProductGroupModificationStruct>(
          data['group_modifications'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductGroupModificationStruct.fromSerializableMap,
        ),
        menuCategoryId: deserializeParam(
          data['menu_category_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProductStruct &&
        categoryName == other.categoryName &&
        productId == other.productId &&
        productName == other.productName &&
        listEquality.equals(spots, other.spots) &&
        listEquality.equals(groupModifications, other.groupModifications) &&
        menuCategoryId == other.menuCategoryId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        categoryName,
        productId,
        productName,
        spots,
        groupModifications,
        menuCategoryId
      ]);
}

ProductStruct createProductStruct({
  String? categoryName,
  String? productId,
  String? productName,
  String? menuCategoryId,
}) =>
    ProductStruct(
      categoryName: categoryName,
      productId: productId,
      productName: productName,
      menuCategoryId: menuCategoryId,
    );
