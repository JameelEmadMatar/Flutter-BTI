import 'package:flutter/material.dart';
import 'package:my_app/task/task_data.dart';
import 'package:my_app/views/widgets/task_widget.dart';

class AllTasks extends StatelessWidget{
  Function fun;
  AllTasks(this.fun);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasksList.length,
      itemBuilder: (context,index){
        return TaskWidget(tasksList[index] , fun);
      }
    );
  }

}