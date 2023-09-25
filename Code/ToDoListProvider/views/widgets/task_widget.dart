import 'package:flutter/material.dart';
import 'package:my_app/task/task.dart';
import 'package:my_app/views/provider/provider_class.dart';
import 'package:provider/provider.dart';


class TaskWidget extends StatefulWidget{
  Task? task;
  TaskWidget(this.task);

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: widget.task!.isCompleted ? Colors.blue : Colors.red,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.task!.name.toString()),
          Checkbox(value: widget.task!.isCompleted, onChanged: (value){
            Provider.of<TodoPorovider>(context,listen:false).changeState(widget.task!);
          })
        ],
      ),
    );
  }
}