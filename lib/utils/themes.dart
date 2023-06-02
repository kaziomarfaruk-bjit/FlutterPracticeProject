// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: must_be_immutable
// ignore_for_file: unused_local_variable
// ignore_for_file: unused_import
import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black)),
      primarySwatch: Colors.deepPurple,
    );
  }

  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);

  static Color creamColor = Color(0xfff5f5f5); 
  static Color darkBluishColor = Color(0xff403b58); 
  
}
