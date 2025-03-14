import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

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
}
