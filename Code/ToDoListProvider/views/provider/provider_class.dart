import 'package:flutter/material.dart';
import 'package:my_app/task/task.dart';

class TodoPorovider extends ChangeNotifier{
  List<Task> tasksList = [
    Task("Go To Work"),
    Task('Read a book'),
    Task('Meet George'),
    Task('Pay bills'),
    Task('Hit the gym'),
    Task("Organize office"),
  ];
  changeState(Task task){
    task.isCompleted = !task.isCompleted;
    notifyListeners();
  }
}