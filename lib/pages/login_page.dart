// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: must_be_immutable
// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "login page",
          style: TextStyle(
              fontSize: 32,
              color: Colors.lightBlue,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}


/*

Text(
          "login page",
          style: TextStyle(
              fontSize: 32,
              color: Colors.lightBlue,
              fontWeight: FontWeight.bold),
        ),

*/