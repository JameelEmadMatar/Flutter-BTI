import 'package:flutter/material.dart';

class DataScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // final data = ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop("Form Screen");
          }, 
          child: const Text('go to screen1'),
        )
      ),
    );
  }

}