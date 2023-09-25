import 'package:flutter/material.dart';
import 'package:my_app/views/provider/provider_class.dart';
import 'package:my_app/views/widgets/task_widget.dart';
import 'package:provider/provider.dart';

class isCompleted extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<TodoPorovider>(context).tasksList.where((element) => element.isCompleted).toList().length,
      itemBuilder: (context,index){
        return TaskWidget(Provider.of<TodoPorovider>(context).tasksList.where((element) => element.isCompleted).toList()[index]);
      }
    );
  }

}