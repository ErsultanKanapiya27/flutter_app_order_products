import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    @HiveField(1)
    String? name,
    @HiveField(2)
    int? price,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
