import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final Map<String,String> product;

  ProductPage({this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product['title'])
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(product['imageUrl']),
            Container(padding: EdgeInsets.all(8.0), child: Text(product['title'])),
            Container(
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                color: Theme.of(context).accentColor,
                child: Text('Delete'),
                onPressed: () => Navigator.pop(context, true),
              ),
            )
          ],
        ),
      )
    );
  }
}