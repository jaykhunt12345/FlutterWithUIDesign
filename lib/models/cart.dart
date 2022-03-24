import 'package:flutter_ui_project_1/core/store.dart';
import 'package:flutter_ui_project_1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
// catalog field
  late CatalogModel _catalog;

// collection of IDs - store IDs of each item
  final List<int> _itemIds = [];

// Get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

// get items in the cart
  List<item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

// get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

// remove items
  void remove(item item) {
    _itemIds.remove(item.id);
  }
}

class AddMutation extends VxMutation<MyStore> {
  final item Item;

  AddMutation(this.Item);
  @override
  perform() {
    store?.cart._itemIds.add(Item.id);
  }
}
