class PostModel{
  String? image;
  String? content;
  User? user;
  bool isLiked = false;
  List<String>? comments;
  PostModel(Map map){
    image = map["image"];
    content = map["content"];
    user = User(map["user"]);
    isLiked = map["isLiked"];
    comments = map["comments"];
  }
}
class User{
  String? imageUrl;
  String? name;
  User(Map map){
    imageUrl = map["image"];
    name = map["name"];
  }
}