// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:fluttercatalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  var days = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          )
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
