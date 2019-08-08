import 'package:flutter/material.dart';
import 'package:lesson_app/pages/products_listing.dart';
import './pages/auth.dart';
import 'package:flutter/rendering.dart';
import './pages/products_admin.dart';
import './pages/productsList.dart';
import './pages/products.dart';

void main() {
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map<String, String>> _products = [];

  void _addButton(Map<String, String> content) {
    setState(() {
      _products.add(content);
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.orange,
          accentColor: Colors.blue,
          brightness: Brightness.light),
      routes: {
        '/admin': (BuildContext context) => Products_admin(),
        '/': (BuildContext context) => ProductsList(_products, _addButton, _deleteProduct)
      },
      onGenerateRoute: (RouteSettings setting) {
        final List<String> pathElements = setting.name.split('/');
        if (pathElements[0] != '') {
          return null;
        }
        if (pathElements[1] == 'product') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute<bool>(
            builder: (BuildContext context) =>
                Products(_products[index]['title'], _products[index]['image']),
          );
        }
      },
    );
  }
}
