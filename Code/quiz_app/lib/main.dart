import 'package:flutter/material.dart';
import 'package:quiz_app/route/app_route.dart';
import 'package:quiz_app/ui/main_screen.dart';

void main() {
  runApp(
    MaterialApp(
      navigatorKey: AppRoute.navkey,
      home: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MainScreen();
  }

}