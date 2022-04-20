import './food.dart';
import 'restaurant.dart';

class Order {
  final Restaurant restaurent;
  final Food food;
  final String date;
  final int quantity;

  Order(
      {required this.restaurent,
      required this.food,
      required this.date,
      required this.quantity});
}
