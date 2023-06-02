// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttercatalog/models/catalog.dart';
import 'package:fluttercatalog/utils/themes.dart';
import 'package:fluttercatalog/widgets/drawer.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/item_widgets.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var days = 30;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var poductData = decodedData["products"];
    CatalogModel.items =
        List.from(poductData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CatalogHeader(),
            if (CatalogModel.items.isNotEmpty)
              CatalogList()
            else
              CircularProgressIndicator(),
          ],
        ),
      )),
    );
  }
}

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Catalog App",
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: MyTheme.darkBluishColor),
        ),
        Text(
          "Trading prodcuts",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: MyTheme.darkBluishColor),
        ),
      ],
    );
  }
}

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CatalogModel.items.count(),
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return CatalogItem(catalog: catalog);
      },
    );
  }
}


class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, this.catalog});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
