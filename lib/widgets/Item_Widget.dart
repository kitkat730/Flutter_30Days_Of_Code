import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({ Key? key, @required this.item}) 
  : assert(item != null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}