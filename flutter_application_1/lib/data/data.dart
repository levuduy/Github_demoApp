import '../models/food.dart';
import '../models/order.dart';
import '../models/restaurant.dart';
import '../models/user.dart';

//food
// ignore: unused_element
final _burrito =
    Food(imageUrl: 'assets/images/burrito.jpg', name: 'Burrito', price: 8.99);
final _steak =
    Food(imageUrl: 'assets/images/steak.jpg', name: 'Steak', price: 17.99);
final _pasta =
    Food(imageUrl: 'assets/images/pasta.jpg', name: 'Pasta', price: 14.99);
final _ramen =
    Food(imageUrl: 'assets/images/ramen.jpg', name: 'Ramen', price: 13.99);
final _pancakes =
    Food(imageUrl: 'assets/images/pancakes.jpg', name: 'Pancakes', price: 9.99);
final _burger =
    Food(imageUrl: 'assets/images/burger.jpg', name: 'Burger', price: 14.99);
final _salmon = Food(
    imageUrl: 'assets/images/salmon.jpg', name: 'Salmon Salad', price: 12.99);
final _pizza =
    Food(imageUrl: 'assets/images/pizza.jpg', name: 'Pizza', price: 12.99);
//restaurant

final _restaurant0 = Restaurant(
    imageUrl: 'assets/images/restaurant0.jpg',
    name: 'Restaurant 0',
    address: '100 Main St',
    rating: 5,
    menu: [
      _burrito,
      _steak,
      _pancakes,
      _pasta,
      _salmon,
      _ramen,
      _pizza,
      _burger
    ]);

final _restaurant1 = Restaurant(
    imageUrl: 'assets/images/restaurant1.jpg',
    name: 'Restaurant 1',
    address: '100 Main St',
    rating: 4,
    menu: [_steak, _pancakes, _pasta, _ramen, _pizza, _burger]);

final _restaurant2 = Restaurant(
    imageUrl: 'assets/images/restaurant2.jpg',
    name: 'Restaurant 2',
    address: '100 Main St',
    rating: 4,
    menu: [_steak, _pancakes, _pasta, _salmon, _pizza, _burger]);

final _restaurant3 = Restaurant(
    imageUrl: 'assets/images/restaurant3.jpg',
    name: 'Restaurant 1',
    address: '100 Main St',
    rating: 2,
    menu: [_burrito, _steak, _pizza, _burger, _salmon]);

final _restaurant4 = Restaurant(
    imageUrl: 'assets/images/restaurant4.jpg',
    name: 'Restaurant 1',
    address: '100 Main St',
    rating: 3,
    menu: [_burrito, _ramen, _pancakes, _salmon]);

final List<Restaurant> restaurant = [
  _restaurant0,
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4
];

final currentUser = User(name: 'Damon', order: [
  Order(
      restaurent: _restaurant0,
      food: _steak,
      date: 'March 10, 2022',
      quantity: 1),
  Order(
      restaurent: _restaurant1,
      food: _ramen,
      date: 'March 10, 2022',
      quantity: 3),
  Order(
      restaurent: _restaurant2,
      food: _burrito,
      date: 'March 10, 2022',
      quantity: 1),
  Order(
      restaurent: _restaurant3,
      food: _salmon,
      date: 'March 10, 2022',
      quantity: 1),
  Order(
      restaurent: _restaurant4,
      food: _pizza,
      date: 'March 10, 2022',
      quantity: 1)
], cart: [
  Order(
      restaurent: _restaurant2,
      food: _burger,
      date: 'March 10, 2022',
      quantity: 1),
  Order(
      restaurent: _restaurant2,
      food: _pasta,
      date: 'March 10, 2022',
      quantity: 1),
  Order(
      restaurent: _restaurant2,
      food: _pancakes,
      date: 'March 10, 2022',
      quantity: 1),
  Order(
      restaurent: _restaurant2,
      food: _burrito,
      date: 'March 10, 2022',
      quantity: 1),
  Order(
      restaurent: _restaurant2,
      food: _steak,
      date: 'March 10, 2022',
      quantity: 1),
]);
