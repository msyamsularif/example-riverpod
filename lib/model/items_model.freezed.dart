// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemsModel _$ItemsModelFromJson(Map<String, dynamic> json) {
  return _ItemsModel.fromJson(json);
}

/// @nodoc
mixin _$ItemsModel {
  List<ItemModel> get itemValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsModelCopyWith<ItemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsModelCopyWith<$Res> {
  factory $ItemsModelCopyWith(
          ItemsModel value, $Res Function(ItemsModel) then) =
      _$ItemsModelCopyWithImpl<$Res, ItemsModel>;
  @useResult
  $Res call({List<ItemModel> itemValue});
}

/// @nodoc
class _$ItemsModelCopyWithImpl<$Res, $Val extends ItemsModel>
    implements $ItemsModelCopyWith<$Res> {
  _$ItemsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemValue = null,
  }) {
    return _then(_value.copyWith(
      itemValue: null == itemValue
          ? _value.itemValue
          : itemValue // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemsModelCopyWith<$Res>
    implements $ItemsModelCopyWith<$Res> {
  factory _$$_ItemsModelCopyWith(
          _$_ItemsModel value, $Res Function(_$_ItemsModel) then) =
      __$$_ItemsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ItemModel> itemValue});
}

/// @nodoc
class __$$_ItemsModelCopyWithImpl<$Res>
    extends _$ItemsModelCopyWithImpl<$Res, _$_ItemsModel>
    implements _$$_ItemsModelCopyWith<$Res> {
  __$$_ItemsModelCopyWithImpl(
      _$_ItemsModel _value, $Res Function(_$_ItemsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemValue = null,
  }) {
    return _then(_$_ItemsModel(
      itemValue: null == itemValue
          ? _value._itemValue
          : itemValue // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemsModel extends _ItemsModel {
  const _$_ItemsModel({final List<ItemModel> itemValue = const []})
      : _itemValue = itemValue,
        super._();

  factory _$_ItemsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemsModelFromJson(json);

  final List<ItemModel> _itemValue;
  @override
  @JsonKey()
  List<ItemModel> get itemValue {
    if (_itemValue is EqualUnmodifiableListView) return _itemValue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemValue);
  }

  @override
  String toString() {
    return 'ItemsModel(itemValue: $itemValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemsModel &&
            const DeepCollectionEquality()
                .equals(other._itemValue, _itemValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_itemValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemsModelCopyWith<_$_ItemsModel> get copyWith =>
      __$$_ItemsModelCopyWithImpl<_$_ItemsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemsModelToJson(
      this,
    );
  }
}

abstract class _ItemsModel extends ItemsModel {
  const factory _ItemsModel({final List<ItemModel> itemValue}) = _$_ItemsModel;
  const _ItemsModel._() : super._();

  factory _ItemsModel.fromJson(Map<String, dynamic> json) =
      _$_ItemsModel.fromJson;

  @override
  List<ItemModel> get itemValue;
  @override
  @JsonKey(ignore: true)
  _$$_ItemsModelCopyWith<_$_ItemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
