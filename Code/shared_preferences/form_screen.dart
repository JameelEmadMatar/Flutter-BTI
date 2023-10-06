import 'package:flutter/material.dart';
import 'package:my_app/provider/sp_provider.dart';
import 'package:provider/provider.dart';

class FormScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen1"),
        actions: <Widget>[
          Consumer<SpProvider>(
            builder: (context, pr, w){
              return Switch(
                value: pr.switchValue,
                onChanged:(value) {
                  pr.StoreMode(value);
                  print(pr.getAppMode());
                },
                activeColor: Colors.red,
              );
            },
          )
        ],
      ),
      body: Consumer<SpProvider>(
        builder: (context, pr, w) { 
          return Column(
            children: [
              Text("The User Name : ${pr.userName ?? 'Not Defined'}"),
              TextFormField(
                controller: pr.controller,
              ),
              ElevatedButton(
             onPressed: (){
                pr.storeUserName();
              },
                child: Text('store'),
              ),
            ],
          );
         },

      ),
    );
  }
}