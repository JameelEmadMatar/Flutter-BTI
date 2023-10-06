import 'package:flutter/material.dart';
import 'package:my_app/provider_data.dart';
import 'package:provider/provider.dart';

class FormScreen extends StatefulWidget{
  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Screen"),
      ),
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.symmetric(vertical: 50 , horizontal: 20),
              child: TextFormField(
                controller: Provider.of<ProviderClass>(context).userNameController,
                decoration: InputDecoration(
                  hintText: "userName",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
              ),
            ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 50 , horizontal: 20),
              child: TextFormField(
                controller: Provider.of<ProviderClass>(context).userPasswordController,
                decoration: InputDecoration(
                  hintText: "password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
              ),
            ),
          ElevatedButton(
            onPressed: () => {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => DataScreen(data.text)))
              // AppRoute.goToScreen(DataScreen("hello"))
              Navigator.pushNamed(context, '/screen', arguments: "hello")
            },
            child: const Text("Submit"),
          )
        ],
      ),
    );
  }
}