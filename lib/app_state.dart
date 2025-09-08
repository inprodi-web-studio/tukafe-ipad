import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _Pin = prefs.getString('ff_Pin') ?? _Pin;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<OrderProductStruct> _OrderItems = [];
  List<OrderProductStruct> get OrderItems => _OrderItems;
  set OrderItems(List<OrderProductStruct> value) {
    _OrderItems = value;
  }

  void addToOrderItems(OrderProductStruct value) {
    OrderItems.add(value);
  }

  void removeFromOrderItems(OrderProductStruct value) {
    OrderItems.remove(value);
  }

  void removeAtIndexFromOrderItems(int index) {
    OrderItems.removeAt(index);
  }

  void updateOrderItemsAtIndex(
    int index,
    OrderProductStruct Function(OrderProductStruct) updateFn,
  ) {
    OrderItems[index] = updateFn(_OrderItems[index]);
  }

  void insertAtIndexInOrderItems(int index, OrderProductStruct value) {
    OrderItems.insert(index, value);
  }

  List<LastCustomerOrdersProductsStruct> _LastCustomerOrdersProducts = [];
  List<LastCustomerOrdersProductsStruct> get LastCustomerOrdersProducts =>
      _LastCustomerOrdersProducts;
  set LastCustomerOrdersProducts(List<LastCustomerOrdersProductsStruct> value) {
    _LastCustomerOrdersProducts = value;
  }

  void addToLastCustomerOrdersProducts(LastCustomerOrdersProductsStruct value) {
    LastCustomerOrdersProducts.add(value);
  }

  void removeFromLastCustomerOrdersProducts(
      LastCustomerOrdersProductsStruct value) {
    LastCustomerOrdersProducts.remove(value);
  }

  void removeAtIndexFromLastCustomerOrdersProducts(int index) {
    LastCustomerOrdersProducts.removeAt(index);
  }

  void updateLastCustomerOrdersProductsAtIndex(
    int index,
    LastCustomerOrdersProductsStruct Function(LastCustomerOrdersProductsStruct)
        updateFn,
  ) {
    LastCustomerOrdersProducts[index] =
        updateFn(_LastCustomerOrdersProducts[index]);
  }

  void insertAtIndexInLastCustomerOrdersProducts(
      int index, LastCustomerOrdersProductsStruct value) {
    LastCustomerOrdersProducts.insert(index, value);
  }

  String _Pin = '88523';
  String get Pin => _Pin;
  set Pin(String value) {
    _Pin = value;
    prefs.setString('ff_Pin', value);
  }

  int _Branch = 1;
  int get Branch => _Branch;
  set Branch(int value) {
    _Branch = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
