import 'package:flutter/material.dart';
import 'package:my_app/data.dart';
import 'package:my_app/post_model.dart';
import 'package:my_app/post_widget.dart';

class PostScreen extends StatelessWidget{
  List<PostModel> ConvertMapToPostModel(){
    return postsData.map((e) => PostModel(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Social Media App"),
      ),
      body: ListView.builder(
        itemCount: postsData.length,
        itemBuilder:(context, index) {
          return PostWidget(ConvertMapToPostModel()[index]);
        },
        ),
    );
  }

}