import 'package:flutter/material.dart';
import 'dart:async';

import '../widgets/ui_widgets/title_default.dart';

class ProductPage extends StatelessWidget {
  final Map<String,dynamic> product;

  ProductPage({this.product});

  _showWarningDialog(BuildContext context) {
    showDialog(context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Are you sure to delete?'),
          content: Text('This action cannot be undone!'),
          actions: <Widget>[
            FlatButton(child: Text('Yes'), onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context,true);
            }),
            FlatButton(child: Text('Cancel'), onPressed: () {
              Navigator.pop(context);
            },)
          ],
        );
      });
  }

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
                Container(padding: EdgeInsets.all(8.0), child: TitleDefault(title: product['title'],)),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: IconButton(
                    color: Theme.of(context).accentColor,
                    icon: Icon(Icons.delete),
                    onPressed: () => _showWarningDialog(context),
                  ),
                )
              ],
            ),
          )
        ),
      );
  }
}