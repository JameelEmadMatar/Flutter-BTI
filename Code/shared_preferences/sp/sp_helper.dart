import 'package:shared_preferences/shared_preferences.dart';

class SpHelper {
  SharedPreferences? sp;
  initSp() async{
    sp  = await SharedPreferences.getInstance();
  }
  setUserName(String name){
    sp?.setString("name", name);
  }
  String? getUserName(){
    String? name = sp?.getString("name");
    return name;
  }
  updateUserName(String name){
    sp?.setString("name", name);
  }
  deleteUserName(){
    sp?.remove("name");
  }
  setMode(bool mode){
    sp?.setBool("mode", mode);
  }
  getMode(){
    sp?.getBool("mode");
  }
  updateMode(bool mode){
    sp?.setBool("mode", mode);
  }
}