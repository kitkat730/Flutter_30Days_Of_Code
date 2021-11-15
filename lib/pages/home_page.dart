import 'package:flutter/material.dart';
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
      body: const Center(
        child: Text("Welcome to Day 2"),
      ),
      drawer: MyDrawer(),
    );
  }
}
