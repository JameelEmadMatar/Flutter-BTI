import 'package:flutter/material.dart';
import 'package:my_app/post_screen.dart';
void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return PostScreen();
  }
}