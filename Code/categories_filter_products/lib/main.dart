import 'package:flutter/material.dart';
import 'package:my_app/CategoriesWidget.dart';
void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AllCategory();
  }
}