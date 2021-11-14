import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("Heading"),
      ),
      body: const Center(
        child: Text("Welcome to Day 2"),
      ),
      drawer: const Drawer(),
    );
  }
}
