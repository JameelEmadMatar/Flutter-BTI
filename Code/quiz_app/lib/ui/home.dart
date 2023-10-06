import 'package:flutter/material.dart';
import 'package:quiz_app/ui/quiz_screen.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Test Your Skills"),
          centerTitle: true,
          toolbarHeight: 80,
          backgroundColor: Colors.black,
          bottom: TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.white,
            labelPadding: EdgeInsets.symmetric(horizontal: 10),
            indicatorColor: Colors.blue,
            indicatorWeight: 5,
            tabs: [
              Tab(text: "Web"),
              Tab(text: "Language"),
              Tab(text: "Mobile"),
              Tab(text: "IQ")
            ],
          ),
        ),
        body: Container(
          color: Color(0xFF353963),
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
              itemCount: 3 ,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => QuizScreen(),
                    ));
                  },
                  child: Container(
                    height: 80,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: NetworkImage("https://media.istockphoto.com/id/1346156711/photo/court-of-law-and-justice-trial-session-imparcial-honorable-judge-pronouncing-sentence.jpg?s=1024x1024&w=is&k=20&c=YY-wG2dlwEQiaF_gRvphwAoRqK2Q2OPChUmYxzXtLK4="),
                        fit: BoxFit.cover 
                      ),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            bottom: 15,
                            left: 15,
                            child: Text(
                              "English 2",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              ),
                            ),
                          ),
                          Positioned(
                            right: 20,
                            top: -20,
                            child: Image.asset(
                              "assets/logo.png",
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ],
                      ),
                  ),
                );
              },
          ),
        ),
      ),
    );
  }

}