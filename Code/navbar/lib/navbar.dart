import 'package:flutter/material.dart';
import 'package:navbar/home_page.dart';
import 'package:navbar/fav_page.dart';
class Navbar extends StatefulWidget{
  @override
  State<Navbar> createState() => _NavBarState();
}

class _NavBarState extends State<Navbar> {
  PageController pageController = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        selectedFontSize: 20,
        backgroundColor: const Color(0xFFeeeeee),
        iconSize: 30,
        selectedItemColor: Colors.green,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          )
        ],
        onTap: (i) => {
          index = i,
          setState((){}),
          pageController.animateToPage(index, duration: const Duration(seconds: 1), curve: Curves.linear)
        },
      ),
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          HomePage(),
          Favorite(),
        ],
      ),
    );
  }
}