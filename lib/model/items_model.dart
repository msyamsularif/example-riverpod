import 'package:example_riverpod/model/item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'items_model.freezed.dart';
part 'items_model.g.dart';

@freezed
class ItemsModel with _$ItemsModel {
  const factory ItemsModel({
    @Default([]) List<ItemModel> itemValue,
  }) = _ItemsModel;

  const ItemsModel._();

  List<ItemModel> get completed {
    return itemValue.where((value) => value.isCompleted).toList();
  }

  List<ItemModel> get uncompleted {
    return itemValue.where((value) => !value.isCompleted).toList();
  }

  factory ItemsModel.fromJson(Map<String, Object?> json) =>
      _$ItemsModelFromJson(json);
}
