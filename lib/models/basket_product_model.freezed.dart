// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BasketProduct _$BasketProductFromJson(Map<String, dynamic> json) {
  return _BasketProduct.fromJson(json);
}

/// @nodoc
mixin _$BasketProduct {
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get price => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasketProductCopyWith<BasketProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketProductCopyWith<$Res> {
  factory $BasketProductCopyWith(
          BasketProduct value, $Res Function(BasketProduct) then) =
      _$BasketProductCopyWithImpl<$Res, BasketProduct>;
  @useResult
  $Res call(
      {@HiveField(1) String? name,
      @HiveField(2) int? price,
      @HiveField(3) int? amount});
}

/// @nodoc
class _$BasketProductCopyWithImpl<$Res, $Val extends BasketProduct>
    implements $BasketProductCopyWith<$Res> {
  _$BasketProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BasketProductCopyWith<$Res>
    implements $BasketProductCopyWith<$Res> {
  factory _$$_BasketProductCopyWith(
          _$_BasketProduct value, $Res Function(_$_BasketProduct) then) =
      __$$_BasketProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) String? name,
      @HiveField(2) int? price,
      @HiveField(3) int? amount});
}

/// @nodoc
class __$$_BasketProductCopyWithImpl<$Res>
    extends _$BasketProductCopyWithImpl<$Res, _$_BasketProduct>
    implements _$$_BasketProductCopyWith<$Res> {
  __$$_BasketProductCopyWithImpl(
      _$_BasketProduct _value, $Res Function(_$_BasketProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$_BasketProduct(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BasketProduct implements _BasketProduct {
  const _$_BasketProduct(
      {@HiveField(1) this.name,
      @HiveField(2) this.price,
      @HiveField(3) this.amount});

  factory _$_BasketProduct.fromJson(Map<String, dynamic> json) =>
      _$$_BasketProductFromJson(json);

  @override
  @HiveField(1)
  final String? name;
  @override
  @HiveField(2)
  final int? price;
  @override
  @HiveField(3)
  final int? amount;

  @override
  String toString() {
    return 'BasketProduct(name: $name, price: $price, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasketProduct &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, price, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BasketProductCopyWith<_$_BasketProduct> get copyWith =>
      __$$_BasketProductCopyWithImpl<_$_BasketProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BasketProductToJson(
      this,
    );
  }
}

abstract class _BasketProduct implements BasketProduct {
  const factory _BasketProduct(
      {@HiveField(1) final String? name,
      @HiveField(2) final int? price,
      @HiveField(3) final int? amount}) = _$_BasketProduct;

  factory _BasketProduct.fromJson(Map<String, dynamic> json) =
      _$_BasketProduct.fromJson;

  @override
  @HiveField(1)
  String? get name;
  @override
  @HiveField(2)
  int? get price;
  @override
  @HiveField(3)
  int? get amount;
  @override
  @JsonKey(ignore: true)
  _$$_BasketProductCopyWith<_$_BasketProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
