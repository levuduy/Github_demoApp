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
      title: 'Display list',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  List<Station> stations = [
    Station(1, 'Duy01', 'public', true),
    Station(2, 'Duy02', 'private', false),
    Station(3, 'Duy03', 'public', true),
    Station(4, 'Duy04', 'private', false),
    Station(5, 'Duy05', 'public', true),
    Station(6, 'Duy06', 'private', false),
    Station(7, 'Duy07', 'private', false),
    Station(8, 'Duy08', 'public', true),
    Station(9, 'Duy09', 'public', true),
    Station(10, 'Duy10', 'public', true),
    Station(1, 'Duy01', 'public', true),
    Station(2, 'Duy02', 'private', false),
    Station(3, 'Duy03', 'public', true),
    Station(4, 'Duy04', 'private', false),
    Station(5, 'Duy05', 'public', true),
    Station(6, 'Duy06', 'private', false),
    Station(7, 'Duy07', 'private', false),
    Station(8, 'Duy08', 'public', true),
    Station(9, 'Duy09', 'public', true),
    Station(10, 'Duy10', 'public', true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView.builder(
        itemCount: stations.length,
        itemBuilder: (context, index) {
          final item = stations[index];
          return ListTile(
            leading: Icon(
              Icons.online_prediction,
              color: item.status ? Colors.blue : Colors.green,
            ),
            title: Text(
              item.name,
              style: TextStyle(color: Colors.pink),
            ),
            trailing: Icon(item.type == 'public' ? Icons.public : Icons.lock),
          );
        },
      ),
    );
  }
}

class Station {
  int id;
  String name;
  String type;
  bool status;
  Station(this.id, this.name, this.type, this.status);
}
