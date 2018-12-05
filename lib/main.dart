import 'package:flutter/material.dart';
import 'package:ebay_copy/products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _MyAppState();
    }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ["Food Tester"];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Awesome Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Listing'),
          
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  setState(() {                  
                    _products.add('Advanced Food Tester');
                  });
                },
                child: Text('Add Product'),
              ),
            ),
            Products(_products)
          ]
        )
      )
    );
  }
}