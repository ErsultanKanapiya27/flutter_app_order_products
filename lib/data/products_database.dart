import 'package:hive_flutter/hive_flutter.dart';

class ProductsDatabase{
  List products = [];

  final _productsBox = Hive.box('products');

  void createInitialData() {
    products = [
      ["Coca-Cola", 380],
      ["Sprite", 380],
      ["Meat", 2000],
      ["Ice Cream", 450],
      ["Lay's", 740],
      ["Bread", 80],

    ];

    _productsBox.put('products', products);
  }
}