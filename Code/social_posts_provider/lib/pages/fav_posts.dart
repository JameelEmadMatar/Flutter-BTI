import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_posts_provider/widgets/post_widget.dart';
import 'package:social_posts_provider/provider/provider_class.dart';

class FavPosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Provider.of<PostsProvider>(context).postsData.where((element) => element.isLiked == true).length > 0 
    ? 
    ListView.builder(
      itemCount: Provider.of<PostsProvider>(context).postsData.where((element) => element.isLiked == true).length,
      itemBuilder:(context, index) {
        return PostWidget(Provider.of<PostsProvider>(context).postsData.where((element) => element.isLiked == true).toList()[index]);
      },
    )
    : 
    Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey , width: 2)
        ),
        child: const Text('Not Have Favorite Posts')
      )
    );
  }
}