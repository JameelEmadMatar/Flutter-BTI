import 'package:flutter/material.dart';
import 'package:my_app/sp/sp_helper.dart';

class SpProvider extends ChangeNotifier{
  bool switchValue = false;
  SpProvider(){
    createSpObject();
  }
  createSpObject() async{
    SpHelper spHelper = SpHelper();
    await spHelper.initSp();
    getUserName();
    getAppMode();
  }
  StoreMode(bool mode){
    switchValue = mode;
  }
  getAppMode(){
    switchValue = spHelper.getMode();
    notifyListeners();
  }
  dynamic spHelper;
  TextEditingController controller = TextEditingController();
  String? userName;
  storeUserName(){
    String enteredUserName = controller.text;
    spHelper.setUserName(enteredUserName);
    getUserName();
  } 
  getUserName(){
    userName = spHelper.getUserName();
    notifyListeners();
  }
}