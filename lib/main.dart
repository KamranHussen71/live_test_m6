import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Shopping List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyShoppingList(),
    );
  }
}

class MyShoppingList extends StatelessWidget {
  final List<Map<String, dynamic>> shoppingItems = [
    {'name': 'Apples', 'icon': Icons.shopping_basket_rounded},
    {'name': 'Bananas', 'icon': Icons.shopping_basket_rounded},
    {'name': 'Bread', 'icon': Icons.shopping_basket_rounded},
    {'name': 'Milk', 'icon': Icons.shopping_basket_rounded},
    {'name': 'Eggs', 'icon': Icons.shopping_basket_rounded},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shopping List'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: shoppingItems.length,
        itemBuilder: (context, index) {
          final item = shoppingItems[index];
          return ListTile(
            leading: Icon(item['icon'], color: Colors.grey),
            title: Text(item['name']),
            onTap: () {
            },
          );
        },
      ),
    );
  }
}
