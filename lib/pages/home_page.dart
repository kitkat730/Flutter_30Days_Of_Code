import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/Item_widget.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    var Listdetails = List.generate(100,(int index) => CatalogModel.items[0]);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //title: const Text("Catalog"),
         title: const Text("Catalog",style: TextStyle(color: Colors.black),textAlign: TextAlign.center,),
        //backgroundColor: Colors.white,
        //iconTheme: IconThemeData(color: Colors.black),
        //elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
               itemCount: Listdetails.length,
               itemBuilder: (context, index){
                 return ItemWidget(item: Listdetails[index]);
               },
            ),
      ),
      drawer: MyDrawer(),
    );
  }
}
