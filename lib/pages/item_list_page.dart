import 'package:example_riverpod/data/modul.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ItemListPage extends ConsumerWidget {
  const ItemListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.watch(itemListState);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item List'),
        actions: [
          IconButton(
            onPressed: () => context.push('/item/new'),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: item.itemValue.length,
        itemBuilder: (context, index) {
          final itemIndex = item.itemValue[index];

          return ListTile(
            title: Text(itemIndex.nameItem),
            subtitle: Text(itemIndex.desc),
            leading: Checkbox(
              value: itemIndex.isCompleted,
              onChanged: (value) {
                if (value != null) {
                  final newItem = itemIndex.copyWith(isCompleted: value);

                  ref.read(itemListState.notifier).save(newItem);
                }
              },
            ),
            onTap: () => context.push('/item/${itemIndex.id}'),
          );
        },
      ),
    );
  }
}
