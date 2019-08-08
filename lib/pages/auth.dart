import 'package:flutter/material.dart';
import './productsList.dart';

class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => Navigator.pushReplacementNamed(context, '/'),
          child: Text('Login'),
        ),
      ),
    );
  }
}
