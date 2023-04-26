import 'package:example_riverpod/data/repository/modul.dart';
import 'package:example_riverpod/model/item_model.dart';
import 'package:example_riverpod/model/items_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ItemStateNotifier extends StateNotifier<ItemsModel> {
  ItemStateNotifier(this.ref) : super(const ItemsModel(itemValue: [])) {
    loadItems();
  }

  final Ref ref;
  late final getItems = ref.read(itemsProvider);

  Future<void> loadItems() async {
    state = await getItems.loadItems();
  }

  Future<void> save(ItemModel item) async {
    await getItems.saveItems(item);
    await loadItems();
  }

  Future<ItemModel?> get(int id) async {
    return await getItems.getByIdItems(id);
  }

  Future<ItemModel?> delete(ItemModel item) async {
    await getItems.deleteItems(item);
    await loadItems();
  }
}

final itemListState =
    StateNotifierProvider<ItemStateNotifier, ItemsModel>((ref) {
  return ItemStateNotifier(ref);
});
