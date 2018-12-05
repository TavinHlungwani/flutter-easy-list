import 'package:flutter/material.dart';

import 'package:ebay_copy/products.dart';

class ProductsManager extends StatefulWidget {
  final String startingProduct;
  
  ProductsManager(this.startingProduct);


  @override
  State<StatefulWidget> createState() {
      return _ProductsManagerState();
    }
}

class _ProductsManagerState extends State<ProductsManager> {
  List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(8.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {                  
                _products.add('Advanced Food Tester');
              });
            },
            child: Text('Add Product'),
          ), 
        ),
        Products(_products)
      ],
    );
  }
}