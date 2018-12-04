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
        body: Card(
          child: Column(
            children: <Widget>[
              Image.asset('assets/food.jpg'),
              Text('Hello World!')
            ],
          ),

        )
      )
    );
  }
}