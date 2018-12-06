import 'package:flutter/material.dart';

import 'package:ebay_copy/products.dart';

class ProductsManager extends StatelessWidget {
  final List<Map<String,dynamic>> products;

  ProductsManager(this.products);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Products(products:products))
      ],
    );
  }
}