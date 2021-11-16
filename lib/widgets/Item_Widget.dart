import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //elevation : 0.0,
      //color: Colors.deepOrange,
      //borderOnForeground: true,
      child: ListTile(
        leading: Image.network(item.imageUrl),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",
        textScaleFactor: 1.2,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple
        ),),
      ),
    );
  }
}
