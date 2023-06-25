import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import '../data/basket_database.dart';

final basketDatabaseProvider = Provider<BasketDatabase>((ref) {
  final _basketBox = Hive.box('basket');
  final basketDatabase = BasketDatabase();

  basketDatabase.loadData();
  basketDatabase.basket = _basketBox.get('basket', defaultValue: []);

  return basketDatabase;
});