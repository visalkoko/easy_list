import 'package:flutter/material.dart';
import './productsList.dart';
import './products_listing.dart';
import './product_create.dart';

class Products_admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: <Widget>[
                AppBar(
                  title: Text('Products'),
                  automaticallyImplyLeading: false,
                ),
                ListTile(
                  title: Text('All products'),
                  leading: Icon(Icons.crop),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: Text('Manage Products'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: 'Manage',
                  icon: Icon(Icons.create),
                ),
                Tab(
                  text: 'Admin',
                  icon: Icon(Icons.list),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ProductListing(), ProductCreate()
            ],
          )),
    );
  }
}
