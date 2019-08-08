import 'package:flutter/material.dart';
import 'package:lesson_app/product.dart';
import './product.dart';
import './product_control.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String,String>> products;
  final Function addButton;
  final Function deleteProduct;

  ProductManager(this.products, this.addButton, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('[Product Manager Widget] Build');
    return  Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(addButton),
        ),
        Expanded(
          child: Product(products, deleteProductz: deleteProduct),
        )
      ],
    );
  }
}
