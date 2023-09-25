import 'package:flutter/material.dart';
import 'package:navbar/navbar.dart';
void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Navbar();
  }
}