import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:product_order_app/data/basket_database.dart';
import 'package:product_order_app/widgets/basket_product_tile.dart';
import '../providers/basket_database_provider.dart';

class BasketPage extends ConsumerStatefulWidget {

  const BasketPage({super.key});

  @override
  ConsumerState<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends ConsumerState<BasketPage> {
  BasketDatabase basketDatabase = BasketDatabase();

  @override
  void initState() {
    basketDatabase = ref.read(basketDatabaseProvider);
    basketDatabase.loadData();

    super.initState();

  }

  int currentIndex = 1;

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

  void increaseAmount(int index) {
    setState(() {
      basketDatabase.basket[index]['amount']++;
    });
    basketDatabase.updateDatabase();
  }

  void decreaseAmount(int index) {
    setState(() {
      if (basketDatabase.basket[index]['amount'] > 0) {
        basketDatabase.basket[index]['amount']--;

        if (basketDatabase.basket[index]['amount'] == 0) {
          basketDatabase.basket.removeAt(index);
        }
      }
    });
    basketDatabase.updateDatabase();
  }

  int getTotalPrice() {
    int totalPrice = 0;
    for (var product in basketDatabase.basket) {
      int price = product['price'];
      int amount = product['amount'];
      totalPrice += price * amount;
    }
    return totalPrice;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basket'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: basketDatabase.basket.length,
              itemBuilder: (context, index) {
                final productName = basketDatabase.basket[index]['name'] ?? '';
                final productPrice = basketDatabase.basket[index]['price'] ?? 0;
                final productAmount = basketDatabase.basket[index]['amount'] ?? 0;

                return BasketProductTile(
                  name: productName,
                  price: productPrice,
                  amount: productAmount,
                  onAdd: () => increaseAmount(index),
                  onDelete: () => decreaseAmount(index),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
              },
              child: Text(
                'Total Price: ${getTotalPrice()} tg',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
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
