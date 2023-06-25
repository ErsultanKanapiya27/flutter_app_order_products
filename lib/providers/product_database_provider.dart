import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:product_order_app/data/products_database.dart';

final productsDatabaseProvider = Provider<ProductsDatabase>((ref) {
  final _productsBox = Hive.box('products');
  final productsDatabase = ProductsDatabase();

  productsDatabase.createInitialData();
  productsDatabase.products = _productsBox.get('products', defaultValue: []);

  return productsDatabase;
});
