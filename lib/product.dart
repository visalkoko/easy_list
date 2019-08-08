import 'package:flutter/material.dart';
import './pages/products.dart';

class Product extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProductz;
  Product(this.products, {this.deleteProductz}) {
    print('[Product Widget] Constructor');
  } // receive widget by adding constructor function

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Text('Detail'),
                onPressed: () =>
                    Navigator.pushNamed<bool>(context, '/product/' + index.toString()).then((bool value) {
                      // relate with boolean with product at navigator.pop
                      if (value) {
                        deleteProductz(index);
                      }
                    }),
              )
            ],
            alignment: MainAxisAlignment.center,
          )
        ],
      ),
    );
  }

  Widget _buildProductCard() {
    Widget productCard;
    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      productCard = Container();
      // Center(child: Text('No product availablee, please add some!'));
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('[Product Widget] Build');
    return _buildProductCard();
  }
}
