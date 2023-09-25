import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_posts_provider/widgets/post_widget.dart';
import 'package:social_posts_provider/provider/provider_class.dart';

class AllPosts extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<PostsProvider>(context).postsData.length,
      itemBuilder:(context, index) {
        return PostWidget(Provider.of<PostsProvider>(context).postsData[index]);
      },
    );
  }
}