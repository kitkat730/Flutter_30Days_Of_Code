import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/Item_Widget.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //title: const Text("Catalog"),
         title: const Text("Catalog",style: TextStyle(color: Colors.black),textAlign: TextAlign.center,),
        //backgroundColor: Colors.white,
        //iconTheme: IconThemeData(color: Colors.black),
        //elevation: 0.0,
      ),
      body: ListView.builder(
             itemCount: CatalogModel.items.length,
             itemBuilder: (context, index){
               return ItemWidget(item: CatalogModel.items[index]);
             },
          ),
      drawer: MyDrawer(),
    );
  }
}
