import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_posts_provider/widgets/posts_screen.dart';
import 'package:social_posts_provider/provider/provider_class.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PostsProvider>(
      create: (context){
        return PostsProvider();
      },
      child: MaterialApp(
        home: PostsScreen()
      ),
    );
  }

}