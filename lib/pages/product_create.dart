import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;

  ProductCreatePage(this.addProduct);

  @override
    State<StatefulWidget> createState() {
      return _ProductCreatePageState();
    }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String title = '';
  String description = '';
  double price = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: 'Title'
            ),
            keyboardType: TextInputType.text,
            onChanged: (String value) {
              setState(() {
                            title=value;
                          });
            },
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Description'
            ),
            keyboardType: TextInputType.multiline,
            maxLines: 4,
            onChanged: (String value) {
              setState(() {
                            description=value;
                          });
            },
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Price'
            ),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                            price=double.parse(value);
                          });
            },
          ),
          SizedBox(height: 8.0,),
          RaisedButton(
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
            child: Text('Save'),
            onPressed: () {
              if(title == '') {
                return;
              }
              final Map<String, dynamic> product = {
                'title': title,
                'description': description,
                'price': price,
                'imageUrl': 'assets/food.jpg'
              };
              widget.addProduct(product);
              Navigator.pushReplacementNamed(context, '/');
            },
          )
        ],
      ),
    );
  }
}