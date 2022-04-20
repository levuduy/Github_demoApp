//import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        StationDetail.nameRoute: (context) => const StationDetail(),
      },
      title: 'Flutter FastFood Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  List<Station> stations = [
    Station(1, 'Cơm gà', 'public', true, 60.000),
    Station(2, 'Mì xào bò', 'private', false, 55.000),
    Station(3, 'Gà rán', 'public', true, 60.000),
    Station(4, 'Xúc xích Đức chiên', 'private', false, 45.000),
    Station(5, 'Pizza', 'public', true, 75.000),
    Station(6, 'Bánh mì kẹp thịt', 'private', false, 40.000),
    Station(7, 'Kimbap', 'private', false, 45.000),
    Station(8, 'Hamburger', 'public', true, 45.000),
    Station(9, 'Snack', 'public', true, 40.000),
    Station(10, 'Cơm bò lúc lắc', 'public', true, 50.000),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: GridView.count(
        childAspectRatio: 1.5,
        crossAxisCount: 2,
        children: stations.map((item) {
          return StationItem(item: item);
        }).toList(),
      ),
    );
  }
}

class StationItem extends StatelessWidget {
  const StationItem({Key? key, required this.item}) : super(key: key);
  final Station item;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Clicked ${item.name}');
        Navigator.pushNamed(context, StationDetail.nameRoute, arguments: item);
      },
      splashColor: Colors.blue,
      child: Card(
        child: Container(
          color: item.status ? Colors.green : Colors.red,
          alignment: Alignment.center,
          child: Text(
            item.name,
            style: TextStyle(
                color: Color.fromARGB(31, 0, 0, 0),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class StationDetail extends StatelessWidget {
  const StationDetail({Key? key}) : super(key: key);
  static const nameRoute = '/Detail';

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Station;
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Center(
        child: Row(
          children: [
            Text(
              '${item.temp}000vnd',
              style: TextStyle(color: Colors.pink, fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}

class Station {
  int id;
  String name;
  String type;
  bool status;
  double temp;
  Station(this.id, this.name, this.type, this.status, this.temp);
}
