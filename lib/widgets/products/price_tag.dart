import 'package:flutter/material.dart';

class PriceTag extends StatelessWidget {
  final String price;
  PriceTag(this.price);

  @override
    Widget build(BuildContext context) {
      return Container(
        child: Text('\$$price', style: TextStyle(color: Colors.white),),
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          color: Theme.of(context).accentColor
        ),
      );
    }
}