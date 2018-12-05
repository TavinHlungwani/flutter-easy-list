import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;
  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: RaisedButton(
        onPressed: () {
          addProduct({'title': 'Advanced Food Tester','imageUrl':'assets/food.jpg'});
        },
        child: Text('Add Product'),
      ),
    );
  }
}