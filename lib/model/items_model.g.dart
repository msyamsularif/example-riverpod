// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemsModel _$$_ItemsModelFromJson(Map<String, dynamic> json) =>
    _$_ItemsModel(
      itemValue: (json['itemValue'] as List<dynamic>?)
              ?.map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ItemsModelToJson(_$_ItemsModel instance) =>
    <String, dynamic>{
      'itemValue': instance.itemValue,
    };
