import 'package:flutter/material.dart';

import './product_card.dart';

class Products extends StatelessWidget {
  final List<Map<String,dynamic>> products;

  Products({this.products});

  Widget _buildProductList() {
    Widget productCards;
    if(products.length > 0) {
        productCards = ListView.builder(
        itemBuilder: (BuildContext context, int index) => ProductCard(product: products[index], index: index),
        itemCount: products.length,
      );
    }else {
      //return empty container if you don't want to render anything, returning null will be invalid
      productCards = Center(child: Text('No products, add some.'));
    }
    return productCards;
  }

  Widget build(BuildContext context) {
    return _buildProductList();
  }
}