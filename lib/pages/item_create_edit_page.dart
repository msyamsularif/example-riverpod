import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:example_riverpod/data/modul.dart';
import 'package:example_riverpod/model/item_model.dart';

class ItemCreateEditPage extends ConsumerStatefulWidget {
  final int? id;

  const ItemCreateEditPage({
    super.key,
    this.id,
  });

  @override
  ConsumerState<ItemCreateEditPage> createState() => _ItemCreateEditPageState();
}

class _ItemCreateEditPageState extends ConsumerState<ItemCreateEditPage> {
  late final ItemStateNotifier modelItem = ref.read(itemListState.notifier);
  final _formKey = GlobalKey<FormState>();
  final _tileController = TextEditingController();
  final _descController = TextEditingController();
  bool _isCompleted = false;

  @override
  void initState() {
    if (widget.id != null) {
      modelItem.get(widget.id!).then((value) {
        if (value != null) {
          setState(() {
            _tileController.text = value.nameItem;
            _descController.text = value.desc;
            _isCompleted = value.isCompleted;
          });
        }
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.id != null ? 'Edit Item' : 'Item New'),
        actions: [
          if (widget.id != null)
            IconButton(
              onPressed: () async {
                final router = GoRouter.of(context);
                final confirm = await showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Apakah yakin ingin menghapus?'),
                      content: const Text(
                        'Jika Anda menghapus data tidak dapat mengembalikannya',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(false),
                          child: const Text('Batal'),
                        ),
                        ElevatedButton(
                          onPressed: () => Navigator.of(context).pop(true),
                          child: const Text('Ya, Lanjutkan'),
                        )
                      ],
                    );
                  },
                );

                if (confirm) {
                  modelItem.get(widget.id!).then((value) {
                    if (value != null) {
                      modelItem.delete(value);

                      if (router.canPop()) router.pop();
                    }
                  });
                }
              },
              color: Colors.red,
              icon: const Icon(Icons.delete),
            ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _tileController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }

                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _descController,
                decoration: const InputDecoration(
                  labelText: 'Deskripsi',
                  border: OutlineInputBorder(),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Deskripsi tidak boleh kosong';
                  } else if (value.length <= 5) {
                    return 'Deskripsi kurang dari 5';
                  }

                  return null;
                },
              ),
              const SizedBox(height: 20),
              CheckboxListTile(
                value: _isCompleted,
                title: const Text('Completed'),
                contentPadding: EdgeInsets.zero,
                onChanged: (value) {
                  if (mounted) {
                    setState(() {
                      _isCompleted = value!;
                    });
                  }
                },
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            final item = ItemModel(
              id: widget.id ?? DateTime.now().microsecondsSinceEpoch,
              nameItem: _tileController.text,
              desc: _descController.text,
              isCompleted: _isCompleted,
            );

            ref.read(itemListState.notifier).save(item);
            context.pop();
          }
        },
        label: const Text('Save'),
      ),
    );
  }
}
