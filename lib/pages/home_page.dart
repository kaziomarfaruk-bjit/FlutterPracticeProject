// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  var days = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Text('Home Flutter in $days days'),
      ),
      drawer: Drawer(),
    );
  }
}
