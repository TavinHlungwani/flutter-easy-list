import 'package:flutter/material.dart';
import 'package:ebay_copy/products_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String startingProduct = "Food Tester";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Awesome Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.deepPurple
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Listing'),
          
        ),
        body: ProductsManager()
      )
    );
  }
}