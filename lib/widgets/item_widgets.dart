import 'package:flutter/material.dart';
import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: StadiumBorder(),
      child: ListTile(
        onTap: () {
          print("Tapped on ${item.name}");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "${item.price} \$",
          textScaleFactor: 1.2,
          style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
