import 'package:flutter/material.dart';
import 'package:product_order_app/data/products_database.dart';
import 'package:product_order_app/widgets/product_tile.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/basket_database_provider.dart';
import '../providers/product_database_provider.dart';

class ProductPage extends ConsumerStatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends ConsumerState<ProductPage> {
  ProductsDatabase products_db = ProductsDatabase();

  int currentIndex = 0;

  @override
  void initState() {
    products_db = ref.read(productsDatabaseProvider);
    products_db.createInitialData();
    super.initState();
  }

  void addProductToBasket(int index) {
    final product = products_db.products[index];
    final productName = product[0];
    final productPrice = product[1];

    final basketDatabase = ref.read(basketDatabaseProvider);

    setState(() {

      final existingProduct = basketDatabase.basket.firstWhere(
            (item) => item['name'] == productName,
        orElse: () => null,
      );

      if (existingProduct != null) {
        existingProduct['amount']++;
      } else {
        basketDatabase.basket.add({
          'name': productName,
          'price': productPrice,
          'amount': 1,
        });
      }

      basketDatabase.updateDatabase();
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Product added to basket')),
    );
  }

  void onBottomNavigationBarItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });

    if (index == 0) {
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
    } else if (index == 1) {
      Navigator.pushNamedAndRemoveUntil(context, '/basket', (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: ListView.builder(
        itemCount: products_db.products.length,
        itemBuilder: (context, index) {
          return ProductTile(
            name: products_db.products[index][0],
            price: products_db.products[index][1],
            onAdd: () {
              addProductToBasket(index);
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onBottomNavigationBarItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_rounded),
            label: 'Basket',
          ),
        ],
      ),
    );
  }
}
