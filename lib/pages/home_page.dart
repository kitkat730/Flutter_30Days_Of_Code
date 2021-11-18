import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/Item_widget.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatefulWidget {

  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


    @override
  void initState()
  {
    super.initState();
    loadCatalogJsonFile();
  }

  
   loadCatalogJsonFile () async
  {
    await Future.delayed( const Duration(seconds: 3));
     final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
     final  decodeData = jsonDecode(catalogJson);
     var productData = decodeData["products"];
     CatalogModel.items = List.from(productData)
     .map<Item>((item) => Item.fromMap(item))
     .toList();
    setState(() { });
  }

    Widget build(BuildContext context) {
    //var Listdetails = List.generate(100,(int index) => CatalogModel.items[0]);
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
        child:( CatalogModel.items.length > 1 && CatalogModel.items != null ) ? ListView.builder(
               itemCount:CatalogModel.items.length,
               itemBuilder: (context, index){
                 return ItemWidget(item: CatalogModel.items[index]);
               },
            ) : const Center(
                child: CircularProgressIndicator(),
            ),
      ),
      drawer: MyDrawer(),
    );
  }
}
