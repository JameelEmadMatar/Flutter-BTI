import 'package:flutter/material.dart';
import 'package:my_app/views/pages/all_tasks.dart';
import 'package:my_app/views/pages/incompleted.dart';
import 'package:my_app/views/pages/iscompleted.dart';

class MainScreen extends StatefulWidget{
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  updateScreen(){
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('app bar'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.all_inbox),),
              Tab(icon: Icon(Icons.done),),
              Tab(icon: Icon(Icons.remove),),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            AllTasks(updateScreen),
            isCompleted(updateScreen),
            inCompleted(updateScreen),
          ],
        ),
      ),
    );
  }
}