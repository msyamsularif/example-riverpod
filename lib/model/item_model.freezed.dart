// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemModel _$ItemModelFromJson(Map<String, dynamic> json) {
  return _ItemModel.fromJson(json);
}

/// @nodoc
mixin _$ItemModel {
  int get id => throw _privateConstructorUsedError;
  String get nameItem => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemModelCopyWith<ItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemModelCopyWith<$Res> {
  factory $ItemModelCopyWith(ItemModel value, $Res Function(ItemModel) then) =
      _$ItemModelCopyWithImpl<$Res, ItemModel>;
  @useResult
  $Res call({int id, String nameItem, String desc, bool isCompleted});
}

/// @nodoc
class _$ItemModelCopyWithImpl<$Res, $Val extends ItemModel>
    implements $ItemModelCopyWith<$Res> {
  _$ItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameItem = null,
    Object? desc = null,
    Object? isCompleted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nameItem: null == nameItem
          ? _value.nameItem
          : nameItem // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemModelCopyWith<$Res> implements $ItemModelCopyWith<$Res> {
  factory _$$_ItemModelCopyWith(
          _$_ItemModel value, $Res Function(_$_ItemModel) then) =
      __$$_ItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String nameItem, String desc, bool isCompleted});
}

/// @nodoc
class __$$_ItemModelCopyWithImpl<$Res>
    extends _$ItemModelCopyWithImpl<$Res, _$_ItemModel>
    implements _$$_ItemModelCopyWith<$Res> {
  __$$_ItemModelCopyWithImpl(
      _$_ItemModel _value, $Res Function(_$_ItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameItem = null,
    Object? desc = null,
    Object? isCompleted = null,
  }) {
    return _then(_$_ItemModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nameItem: null == nameItem
          ? _value.nameItem
          : nameItem // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemModel implements _ItemModel {
  const _$_ItemModel(
      {required this.id,
      required this.nameItem,
      required this.desc,
      this.isCompleted = false});

  factory _$_ItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemModelFromJson(json);

  @override
  final int id;
  @override
  final String nameItem;
  @override
  final String desc;
  @override
  @JsonKey()
  final bool isCompleted;

  @override
  String toString() {
    return 'ItemModel(id: $id, nameItem: $nameItem, desc: $desc, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nameItem, nameItem) ||
                other.nameItem == nameItem) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nameItem, desc, isCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemModelCopyWith<_$_ItemModel> get copyWith =>
      __$$_ItemModelCopyWithImpl<_$_ItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemModelToJson(
      this,
    );
  }
}

abstract class _ItemModel implements ItemModel {
  const factory _ItemModel(
      {required final int id,
      required final String nameItem,
      required final String desc,
      final bool isCompleted}) = _$_ItemModel;

  factory _ItemModel.fromJson(Map<String, dynamic> json) =
      _$_ItemModel.fromJson;

  @override
  int get id;
  @override
  String get nameItem;
  @override
  String get desc;
  @override
  bool get isCompleted;
  @override
  @JsonKey(ignore: true)
  _$$_ItemModelCopyWith<_$_ItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
