import 'package:example_riverpod/model/item_model.dart';
import 'package:example_riverpod/model/items_model.dart';

abstract class ItemsRepository {
  Future<ItemsModel> loadItems();
  Future<void> saveItems(ItemModel item);
  Future<void> deleteItems(ItemModel item);
  Future<ItemModel?> getByIdItems(int id);
  Future<void> deleteAllItem();
}
