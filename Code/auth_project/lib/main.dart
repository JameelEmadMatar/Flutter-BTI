import 'package:auth_project/pages/login.dart';
import 'package:auth_project/pages/signup.dart';
import 'package:auth_project/pages/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/" :(context) =>  Welcome(),
        "/login" :(context) =>  Login(),
        "/signup" :(context) =>  SignUp(),
      },
    );
  }
}
