import 'package:flutter/material.dart';
import 'package:my_app/task/task_data.dart';
import 'package:my_app/views/widgets/task_widget.dart';

class isCompleted extends StatelessWidget{
  Function fun;
  isCompleted(this.fun);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasksList.where((element) => element.isCompleted).toList().length,
      itemBuilder: (context,index){
        return TaskWidget(tasksList.where((element) => element.isCompleted).toList()[index] , fun);
      }
    );
  }

}