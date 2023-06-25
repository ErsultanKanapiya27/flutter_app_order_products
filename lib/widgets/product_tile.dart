import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final String name;
  final int price;
  VoidCallback onAdd;

  ProductTile({
    super.key,
    required this.name,
    required this.price,
    required this.onAdd,
  });



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 100,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
        ),
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
                Text(
                  '${price} tg',
                  style: TextStyle(
                      color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            Expanded(child: SizedBox()),
            TextButton(
                onPressed: onAdd,
                child: Container(
                  width: 50,
                  height: 30,
                  child: Text(
                      'Add to basket',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                      ),
                  ),
                ),

              ),
            ]
          ),
      ),
    );
  }
}