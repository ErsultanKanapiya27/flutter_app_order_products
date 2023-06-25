import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:product_order_app/pages/basket_page.dart';
import 'package:product_order_app/pages/products_page.dart';

void main() async{

  await Hive.initFlutter();

  var basket = await Hive.openBox('basket');
  var products = await Hive.openBox('products');

  return runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => ProductPage(),
        '/basket': (context) => BasketPage(),
      },
    );
  }
}