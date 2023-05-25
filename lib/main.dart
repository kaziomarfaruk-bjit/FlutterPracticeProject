// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: must_be_immutable
// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:fluttercatalog/pages/login_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var days = 10;

  @override
  Widget build(BuildContext context) {
    var total = bringVegetables(thala: true, taka: 5);
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/login",
      routes: {
        "/": (context) => HomePage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }

  int bringVegetables({bool thala = false, int taka = 10}) {
    return taka + 10;
  }
}
