import 'package:flutter/material.dart';
import 'package:social_posts_provider/pages/fav_posts.dart';
import 'package:social_posts_provider/pages/all_posts.dart';
class PostsScreen extends StatefulWidget{
  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  PageController pageController = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        selectedItemColor: Colors.green,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'All Posts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite Posts',
          ),
        ],
        onTap: (i) {
          setState(() {
            index = i;
            pageController.animateToPage(i, duration: const Duration(seconds: 1), curve: Curves.linear);
          });
        },
      ),
      body:PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          AllPosts(),
          FavPosts(),
        ],
      ),
    );
  }
}