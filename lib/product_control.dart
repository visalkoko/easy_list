import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addButton;
  ProductControl(this.addButton);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        color: Theme.of(context).primaryColor,
        onPressed: () {
          addButton({'title': 'Chocolate', 'image': 'assets/visal.jpg'});
        },
        child: Text('Add Button'),
      ),
    );
  }
}
