import 'package:flutter/material.dart';

import './product_create.dart';
import './product_list.dart';

class ProductAdminPage extends StatelessWidget {
  final Function addProduct;
  final Function deleteProduct;

  ProductAdminPage(this.addProduct,this.deleteProduct);

  @override
    Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(automaticallyImplyLeading: false, title: Text('Choose Option'),),
              ListTile(
                leading: Icon(Icons.shop),
                title: Text('All products'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, 'products');
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Listing'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.create), text: 'Create Product',),
              Tab(icon: Icon(Icons.list), text: 'My Products')
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ProductCreatePage(addProduct),
            ProductListPage(),
          ],
        )
      ),
    );
  }
}