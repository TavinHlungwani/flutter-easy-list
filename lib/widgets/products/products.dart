import 'package:flutter/material.dart';

import './price_tag.dart';

class Products extends StatelessWidget {
  final List<Map<String,dynamic>> products;

  Products({this.products});

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['imageUrl']),
          Container(
            margin: EdgeInsets.only(top: 8.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      products[index]['title'],
                      style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, fontFamily: 'Oswald'),
                    ),
                  ),
                  SizedBox(width: 8.0,),
                  PriceTag(products[index]['price'].toString())
                ],
              ),
            ) 
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.info),
                color: Theme.of(context).accentColor,
                onPressed: () => Navigator.pushNamed<bool>(context,'/products/' + index.toString()),
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                color: Colors.red,
                onPressed: () {},
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