import 'package:flutter/material.dart';
import 'package:social_posts_provider/data.dart';
import 'package:social_posts_provider/post_widget.dart';

class FavPosts extends StatelessWidget {
  Function fun;
  FavPosts(this.fun);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: finalPostsData().where((element) => element.isLiked == true).length,
      itemBuilder:(context, index) {
        return PostWidget(finalPostsData().where((element) => element.isLiked == true).toList()[index] , fun);
      },
    );
  }
}