import 'package:flutter/material.dart';
import 'package:quiz_app/route/app_route.dart';
import 'package:quiz_app/ui/home.dart';

class MainScreen extends StatelessWidget{
  
  MainScreen(){
    changeScreen();
  }
  changeScreen() async{
    await Future.delayed(Duration(seconds: 5));
    AppRoute.navkey.currentState?.pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF353963),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Test for you",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            SizedBox(height: 30),
            Image.asset(
              "assets/test.png",
              width: 200,
              height: 200,
            ),
          ],
        ),
      )
    );
  }

}