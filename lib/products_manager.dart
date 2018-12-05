import 'package:flutter/material.dart';

import 'package:ebay_copy/products.dart';
import './product_control.dart';

class ProductsManager extends StatefulWidget {
  final Map<String,String> startingProduct;
  
  ProductsManager({this.startingProduct});


  @override
  State<StatefulWidget> createState() {
      return _ProductsManagerState();
    }
}

class _ProductsManagerState extends State<ProductsManager> {
  List<Map<String,String>> _products = [];

  @override
  void initState() {
    if(widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
    super.initState();
  }

  void _addProduct(Map<String,String> product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(int index) {
    setState(() {
          _products.removeAt(index);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(8.0),
          child: ProductControl(_addProduct), 
        ),
        Expanded(
          child: Products(products:_products, deleteProduct: _deleteProduct))
      ],
    );
  }
}