import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct}) {
    print('product manager constructor');
  }
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    print('create state product manager');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    // TODO: implement initState
    print('product manager init state');
    super.initState();
    _products.add(widget.startingProduct);
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('product manager did update widget');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('product manager build');
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
            color: Theme.of(context).primaryColor,
            child: Text('Add Product'),
            onPressed: () {
              setState(() {
                _products.add('Advanced Food Tester');
              });
            }),
      ),
      Products(_products)
    ]);
  }
}
