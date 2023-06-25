import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'basket_product_model.freezed.dart';
part 'basket_product_model.g.dart';

@freezed
class BasketProduct with _$BasketProduct {
  const factory BasketProduct({
    @HiveField(1)
    String? name,
    @HiveField(2)
    int? price,
    @HiveField(3)
    int? amount,
  }) = _BasketProduct;

  factory BasketProduct.fromJson(Map<String, dynamic> json) =>
      _$BasketProductFromJson(json);
}