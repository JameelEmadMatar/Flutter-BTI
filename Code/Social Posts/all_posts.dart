import 'package:flutter/material.dart';
import 'package:social_posts_provider/data.dart';
import 'package:social_posts_provider/post_widget.dart';

class AllPosts extends StatelessWidget{
  Function function;
  AllPosts(this.function);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: postsData.length,
      itemBuilder:(context, index) {
        return PostWidget(finalPostsData()[index] , function);
      },
    );
  }
}