import 'package:flutter/material.dart';
import 'package:quiz_app/ui/result_screen.dart';

class QuizScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF353963),
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30 , horizontal: 15),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("13/40" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold)),
                      const Text("HTML" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold)),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xFFE0E8FF)
                        ),
                        child: const Text("40" , style: TextStyle(color: Color(0xFF290A64) , fontWeight: FontWeight.bold))
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFF494972),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Container(
                            width: 265,
                            height: 20,
                            child: LinearProgressIndicator(
                              minHeight: double.infinity,
                              backgroundColor: Color(0xFFE0E8FF), 
                              borderRadius: BorderRadius.circular(16),
                              valueColor: new AlwaysStoppedAnimation<Color>(Color(0xFF3B95F0)),  
                              value : 13 / 40,
                            )
                          ),
                          const Text("13/40" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  SizedBox(height: 100),
                  const Text(
                    "Which of the following tag is used to insert a line-break in HTML?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.6
                    ),
                  ),
                  SizedBox(height: 50),
                  GridView.builder(
                    shrinkWrap : true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 2.5
                    ),
                    itemCount: 4,
                    itemBuilder:(context, index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: index != 1 ?  Color(0xFF3A3C6F) : Color(0xFF0C8D8B),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context) => ResultScreen(),));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "<pre>",
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              ),
                              Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: index != 1 ? Colors.red : Color(0xFF32BA7C),
                                borderRadius: BorderRadius.circular(100)
                              ),
                                child: index != 1 ? Icon(Icons.close,color: Colors.white) : Icon(Icons.check,color: Colors.white)
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: 
                Container(
                  color: Color(0xFF4CAF50),
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    "Correct Answer",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  )),
                )
          ],
        ),
      ),
    );
  }

}