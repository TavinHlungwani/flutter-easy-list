import 'package:flutter/material.dart';

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
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {},
                child: Text('Add Product'),
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/food.jpg'),
                  Text('Hello World!')
                ],
              ),
            )
          ]

        )
      )
    );
  }
}