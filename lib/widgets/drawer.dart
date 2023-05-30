// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: must_be_immutable
// ignore_for_file: unused_local_variable
// ignore_for_file: unused_import
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageURL =
      "https://images.unsplash.com/flagged/photo-1557427161-4701a0fa2f42?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D&w=1000&q=80";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  // decoration: BoxDecoration(color: Colors.red),
                  margin: EdgeInsets.zero,
                  accountName: Text("Kazi"),
                  accountEmail: Text("kaz@kk.gg"),
                  currentAccountPicture: Image.asset(
                    "assets/images/img_login.png",
                    fit: BoxFit.cover,
                    height: 80,
                    width: 80,
                  ),
                  // CircleAvatar(backgroundImage: NetworkImage(imageURL)),
                )),
            ListTile(
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                )),
            ListTile(
                title: Text(
                  "Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                )),
            ListTile(
                title: Text(
                  "Email me",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
