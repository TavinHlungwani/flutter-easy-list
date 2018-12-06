import 'package:flutter/material.dart';

// import './pages/auth.dart';
import './pages/product_admin.dart';
import './pages/products.dart';
import './pages/product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final List<Map<String,String>> _products = [];

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Awesome Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.deepPurple
      ),
      // home: AuthPage(),
      routes: {
        '/' : (BuildContext context) => ProductsPage(_products,_addProduct, _deleteProduct), //(/ route) is for home page
        'products/admin' : (BuildContext context)=>ProductAdminPage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        List<String> pathElements = settings.name.split('/');
        print(pathElements);
        if(pathElements[0] != '') {
          return null;
        }
        if(pathElements[1] == 'products') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute<bool>(
            builder: (BuildContext context) => ProductPage(product: _products[index])
          );
        }
        return null;
      },
    );
  }
}