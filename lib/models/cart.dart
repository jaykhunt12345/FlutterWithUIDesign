import 'package:flutter_ui_project_1/models/catalog.dart';

class CartModel {
 
// catalog field
  late CatalogModel _catalog;

// collection of IDs - store IDs of each item
  final List<int> _itemIds = [];

// Get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog!= null);
    _catalog = newCatalog;
  }

// get items in the cart
  List<item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

// get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

// add items
  void add(item item) {
    _itemIds.add(item.id);
  }

// remove items
  void remove(item item) {
    _itemIds.remove(item.id);
  }
}
