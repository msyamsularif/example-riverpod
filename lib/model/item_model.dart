import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_model.freezed.dart';
part 'item_model.g.dart';

@freezed
class ItemModel with _$ItemModel {
  const factory ItemModel({
    required int id,
    required String nameItem,
    required String desc,
    @Default(false) bool isCompleted,
  }) = _ItemModel;

  factory ItemModel.fromJson(Map<String, Object?> json) =>
      _$ItemModelFromJson(json);
}
