import 'package:flutter/material.dart';
import 'package:quiz_app/ui/home.dart';

class ResultScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xFF353963),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/cupImg.png"
            ),
            SizedBox(height: 10),
            const Text(
              "Congratulations!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20),
            const Text(
              "Your Score",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "17",
                  style: TextStyle(
                    color: Color(0xFF009688),
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  )
                ),
                const Text(
                  "/ 30",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  )
                ),
              ]
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => HomeScreen(),));
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 25)
              ),
              child: const Text(
                "Home",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
            )
          ],
        ),
      )
    );
  }

}