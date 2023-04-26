import 'package:example_riverpod/data/repository/items_repository.dart';
import 'package:example_riverpod/data/repository/items_repository_impl.dart';
import 'package:example_riverpod/data/source/module.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final itemsProvider = Provider<ItemsRepository>((ref) {
  return ItemsRepositoryImpl(ref.read(filesProvider));
});
