// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemModel _$$_ItemModelFromJson(Map<String, dynamic> json) => _$_ItemModel(
      id: json['id'] as int,
      nameItem: json['nameItem'] as String,
      desc: json['desc'] as String,
      isCompleted: json['isCompleted'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ItemModelToJson(_$_ItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameItem': instance.nameItem,
      'desc': instance.desc,
      'isCompleted': instance.isCompleted,
    };
