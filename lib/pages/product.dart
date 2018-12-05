import 'package:flutter/material.dart';
import 'dart:async';

class ProductPage extends StatelessWidget {
  final Map<String,String> product;

  ProductPage({this.product});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('Back button pressed');
        Navigator.pop(context,false);
        return Future.value(false);
      },
      child: Scaffold(
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
        ),
      );
  }
}