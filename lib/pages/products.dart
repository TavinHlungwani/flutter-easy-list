import 'package:flutter/material.dart';

import '../products_manager.dart';
import './product_admin.dart';

class ProductsPage extends StatelessWidget {
  final List<Map<String,String>> products;
  final Function addProduct;
  final Function deleteProduct;

  ProductsPage(this.products, this.addProduct, this.deleteProduct);

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                title: Text('Choose'),
                automaticallyImplyLeading: false,
              ),
              ListTile(
                title: Text('Manage Products'),
                onTap: () {
                  Navigator.pushReplacementNamed(context,'products/admin');
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Listing'),
          
        ),
        body: ProductsManager(products, addProduct, deleteProduct)
      );
    }
}