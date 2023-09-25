import 'package:flutter/material.dart';
import 'package:social_posts_provider/pages/fav_posts.dart';
import 'package:social_posts_provider/pages/all_posts.dart';
class PostsScreen extends StatefulWidget{
  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
      ),
      body:PageView(
        children: [
          AllPosts(),
          FavPosts(),
        ],
      ),
    );
  }
}