import 'package:flutter/material.dart';

class MyTheme
{
  static ThemeData lightTheme(BuildContext context) => 
  ThemeData(
          primarySwatch: Colors.deepPurple,
          backgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          centerTitle: true,
          ));

   static ThemeData DarkTheme() =>  ThemeData(brightness: Brightness.dark);       
  
}