// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: must_be_immutable
// ignore_for_file: unused_local_variable
// ignore_for_file: avoid_print
// ignore_for_file: sort_child_properties_last
// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:fluttercatalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Material(
      color: Colors.white,
      child: Center(
          child: Column(
        children: [
          Image.asset(
            "assets/images/img_login.png",
            fit: BoxFit.cover,
            height: 300,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome $name",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter username", labelText: "Username"),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter password", labelText: "Password"),
                ),
                SizedBox(
                  height: 20,
                ),
                Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changeButton ? 40 : 8),
                  child: InkWell(
                    splashColor: Colors.red,
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      await Navigator.pushNamed(context, MyRoutes.homeRoute);
                      setState(() {
                        changeButton = false;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 40 : 150,
                      height: 40,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(Icons.done, color: Colors.white)
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                      /* decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          /*shape:
                            changeButton ? BoxShape.circle : BoxShape.rectangle,*/
                          borderRadius:
                              BorderRadius.circular(changeButton ? 40 : 8)), */
                    ),
                  ),
                )

                /*ElevatedButton(
                    child: Text("Login"),
                    style: TextButton.styleFrom(
                        minimumSize: Size(150, 40),
                        foregroundColor: Colors.white),
                    onPressed: () {
                      print("Hello pressed button!");
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    }),*/
              ],
            ),
          )
        ],
      )),
    ));
  }
}
