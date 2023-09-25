import 'package:flutter/material.dart';
import 'package:social_posts_provider/posts_screen.dart';
void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return PostsScreen();
  }

}