import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<Map<String,dynamic>> products;

  Products({this.products});

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['imageUrl']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.pushNamed<bool>(context,'/products/' + index.toString()),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productCards;
    if(products.length > 0) {
        productCards = ListView.builder(
        itemBuilder: _buildProductItem,
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