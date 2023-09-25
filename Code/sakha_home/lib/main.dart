import 'package:flutter/material.dart';
import 'package:sakha_home/DiscoverZakat/discover_zakat.dart';
import 'package:sakha_home/TopBar/top_bar.dart';
import 'package:sakha_home/TopUp/top_up.dart';
import 'package:sakha_home/Urgent/UrgentWidget.dart';
import 'package:sakha_home/Urgent/categories_widget.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),));
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:ListView(
        children: [
          TopBar(),
          TopUp(),
          DiscoverZakat(),
          UrgentWidget(),
        ],
      )
    );
  }
}