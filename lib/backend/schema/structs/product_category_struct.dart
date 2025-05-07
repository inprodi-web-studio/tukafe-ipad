// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductCategoryStruct extends BaseStruct {
  ProductCategoryStruct({
    String? categoryId,
    String? categoryName,
    String? level,
    String? parentCategory,
    String? categoryPhoto,
    String? categoryHidden,
  })  : _categoryId = categoryId,
        _categoryName = categoryName,
        _level = level,
        _parentCategory = parentCategory,
        _categoryPhoto = categoryPhoto,
        _categoryHidden = categoryHidden;

  // "category_id" field.
  String? _categoryId;
  String get categoryId => _categoryId ?? '';
  set categoryId(String? val) => _categoryId = val;

  bool hasCategoryId() => _categoryId != null;

  // "category_name" field.
  String? _categoryName;
  String get categoryName => _categoryName ?? '';
  set categoryName(String? val) => _categoryName = val;

  bool hasCategoryName() => _categoryName != null;

  // "level" field.
  String? _level;
  String get level => _level ?? '';
  set level(String? val) => _level = val;

  bool hasLevel() => _level != null;

  // "parent_category" field.
  String? _parentCategory;
  String get parentCategory => _parentCategory ?? '';
  set parentCategory(String? val) => _parentCategory = val;

  bool hasParentCategory() => _parentCategory != null;

  // "category_photo" field.
  String? _categoryPhoto;
  String get categoryPhoto => _categoryPhoto ?? '';
  set categoryPhoto(String? val) => _categoryPhoto = val;

  bool hasCategoryPhoto() => _categoryPhoto != null;

  // "category_hidden" field.
  String? _categoryHidden;
  String get categoryHidden => _categoryHidden ?? '';
  set categoryHidden(String? val) => _categoryHidden = val;

  bool hasCategoryHidden() => _categoryHidden != null;

  static ProductCategoryStruct fromMap(Map<String, dynamic> data) =>
      ProductCategoryStruct(
        categoryId: data['category_id'] as String?,
        categoryName: data['category_name'] as String?,
        level: data['level'] as String?,
        parentCategory: data['parent_category'] as String?,
        categoryPhoto: data['category_photo'] as String?,
        categoryHidden: data['category_hidden'] as String?,
      );

  static ProductCategoryStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductCategoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'category_id': _categoryId,
        'category_name': _categoryName,
        'level': _level,
        'parent_category': _parentCategory,
        'category_photo': _categoryPhoto,
        'category_hidden': _categoryHidden,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'category_id': serializeParam(
          _categoryId,
          ParamType.String,
        ),
        'category_name': serializeParam(
          _categoryName,
          ParamType.String,
        ),
        'level': serializeParam(
          _level,
          ParamType.String,
        ),
        'parent_category': serializeParam(
          _parentCategory,
          ParamType.String,
        ),
        'category_photo': serializeParam(
          _categoryPhoto,
          ParamType.String,
        ),
        'category_hidden': serializeParam(
          _categoryHidden,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductCategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductCategoryStruct(
        categoryId: deserializeParam(
          data['category_id'],
          ParamType.String,
          false,
        ),
        categoryName: deserializeParam(
          data['category_name'],
          ParamType.String,
          false,
        ),
        level: deserializeParam(
          data['level'],
          ParamType.String,
          false,
        ),
        parentCategory: deserializeParam(
          data['parent_category'],
          ParamType.String,
          false,
        ),
        categoryPhoto: deserializeParam(
          data['category_photo'],
          ParamType.String,
          false,
        ),
        categoryHidden: deserializeParam(
          data['category_hidden'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProductCategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductCategoryStruct &&
        categoryId == other.categoryId &&
        categoryName == other.categoryName &&
        level == other.level &&
        parentCategory == other.parentCategory &&
        categoryPhoto == other.categoryPhoto &&
        categoryHidden == other.categoryHidden;
  }

  @override
  int get hashCode => const ListEquality().hash([
        categoryId,
        categoryName,
        level,
        parentCategory,
        categoryPhoto,
        categoryHidden
      ]);
}

ProductCategoryStruct createProductCategoryStruct({
  String? categoryId,
  String? categoryName,
  String? level,
  String? parentCategory,
  String? categoryPhoto,
  String? categoryHidden,
}) =>
    ProductCategoryStruct(
      categoryId: categoryId,
      categoryName: categoryName,
      level: level,
      parentCategory: parentCategory,
      categoryPhoto: categoryPhoto,
      categoryHidden: categoryHidden,
    );
