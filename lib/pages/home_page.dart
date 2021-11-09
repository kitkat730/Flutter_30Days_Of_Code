import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Heading"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to Day 2"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
