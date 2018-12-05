import 'package:flutter/material.dart';

import '../products_manager.dart';
import './product_admin.dart';

class ProductsPage extends StatelessWidget {

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
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>ProductAdminPage()));
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Listing'),
          
        ),
        body: ProductsManager()
      );
    }
}