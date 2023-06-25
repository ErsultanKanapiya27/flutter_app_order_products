import 'package:flutter/material.dart';

class BasketProductTile extends StatelessWidget {
  final String name;
  final int price;
  final int amount;
  VoidCallback onDelete;
  VoidCallback onAdd;

  BasketProductTile({
    super.key,
    required this.name,
    required this.price,
    required this.amount,
    required this.onAdd,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 100,
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(price.toString()+' tg',style: TextStyle(color: Colors.white,fontSize: 17,),),
              ],
            ),
            Expanded(child: SizedBox()),
            IconButton(
              onPressed: onDelete,
              icon: Icon(Icons.remove),
              color: Colors.white,

            ),
            Text(
              amount.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            IconButton(
              onPressed: onAdd,
              icon: Icon(Icons.add),
              color: Colors.white,
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}