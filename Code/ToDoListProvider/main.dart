import 'package:flutter/material.dart';
import 'package:my_app/views/pages/main_screen.dart';
import 'package:my_app/views/provider/provider_class.dart';
import 'package:provider/provider.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
      create:(context){ // create object of TodoPorovider
        return TodoPorovider();
      },
      child: MaterialApp(
        home: MainScreen()
      ),
    );
  }
}
