import 'dart:convert';

import 'package:example_riverpod/data/repository/items_repository.dart';
import 'package:example_riverpod/data/source/files_source.dart';
import 'package:example_riverpod/model/items_model.dart';
import 'package:example_riverpod/model/item_model.dart';
import 'package:collection/collection.dart';

class ItemsRepositoryImpl extends ItemsRepository {
  ItemsRepositoryImpl(this.files);

  final FilesSource files;
  late final String path = 'barang.json';

  @override
  Future<void> deleteAllItem() async {
    files.remove(path);
  }

  @override
  Future<void> deleteItems(ItemModel item) async {
    final items = await loadItems();
    final newItem = items.itemValue.where((e) => e.id != item.id).toList();

    await files.write(
      path,
      jsonEncode(ItemsModel(itemValue: newItem).toJson()),
    );
  }

  @override
  Future<ItemModel?> getByIdItems(int id) async {
    final items = await loadItems();

    return items.itemValue.firstWhereOrNull((e) => e.id == id);
  }

  @override
  Future<ItemsModel> loadItems() async {
    final content = await files.read(path);

    if (content == null) {
      return const ItemsModel(itemValue: []);
    }

    return ItemsModel.fromJson(jsonDecode(content));
  }

  @override
  Future<void> saveItems(ItemModel item) async {
    final items = await loadItems();
    final newItems = items.itemValue.where((e) => e.id != item.id).toList();

    newItems.add(item);

    await files.write(
      path,
      jsonEncode(ItemsModel(itemValue: newItems).toJson()),
    );
  }
}
