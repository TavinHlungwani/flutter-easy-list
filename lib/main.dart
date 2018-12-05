import 'package:flutter/material.dart';
import 'package:ebay_copy/products_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Awesome Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Listing'),
          
        ),
        body: ProductsManager()
      )
    );
  }
}