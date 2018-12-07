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
  String _title = '';
  String _description = '';
  double _price = 0.0;

  Widget _buildTitleTextField() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Title'
      ),
      keyboardType: TextInputType.text,
      onChanged: (String value) {
        setState(() {
                      _title=value;
                    });
      },
    );
  }

  Widget _buildDescriptionTextField() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Description'
      ),
      keyboardType: TextInputType.multiline,
      maxLines: 4,
      onChanged: (String value) {
        setState(() {
                      _description=value;
                    });
      },
    );
  }

  Widget _buildPriceTextField() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Price'
      ),
      keyboardType: TextInputType.number,
      onChanged: (String value) {
        setState(() {
          _price=double.parse(value);
        });
      },
    );
  }

  void _saveProduct() {
    if(_title == '') {
      return;
    }
    final Map<String, dynamic> product = {
      'title': _title,
      'description': _description,
      'price': _price,
      'imageUrl': 'assets/food.jpg'
    };
    widget.addProduct(product);
    Navigator.pushReplacementNamed(context, 'products');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: ListView(
        children: <Widget>[
          _buildTitleTextField(),
          _buildDescriptionTextField(),
          _buildPriceTextField(),
          SizedBox(height: 8.0,),
          RaisedButton(
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
            child: Text('Save'),
            onPressed: _saveProduct
          )
        ],
      ),
    );
  }
}