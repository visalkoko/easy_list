import 'package:flutter/material.dart';
import 'package:lesson_app/pages/products_listing.dart';
import '../product_manager.dart';
import './products_admin.dart';

class ProductsList extends StatelessWidget {
  final List<Map<String,String>> products;
  final Function addButton;
  final Function deleteProduct;

  ProductsList(this.products, this.addButton, this.deleteProduct);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
          child: Column(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text('Choose'),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/admin');
            },
            title: Text('Manage'),
          )
        ],
      )),
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: ProductManager(products, addButton, deleteProduct),
    );
  }
}
