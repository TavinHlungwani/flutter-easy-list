import 'package:flutter/material.dart';

import './pages/auth.dart';
import './pages/product_admin.dart';
import './pages/products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Awesome Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.deepPurple
      ),
      // home: AuthPage(),
      routes: {
        '/' : (BuildContext context) => ProductsPage(), //(/ route) is for home page
        'products/admin' : (BuildContext context)=>ProductAdminPage()
      },
    );
  }
}