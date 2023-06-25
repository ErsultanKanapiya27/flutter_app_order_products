import 'package:hive_flutter/hive_flutter.dart';

class BasketDatabase{
  List basket = [];

  final _basketBox = Hive.box('basket');

  void loadData(){
    basket = _basketBox.get("BASKET");
  }

  void updateDatabase(){
    _basketBox.put("BASKET", basket);
  }
}