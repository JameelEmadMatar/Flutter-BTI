class Category {
  String? id;
  String? name;
  String? image;
  List<Project>? projects;
  Category(Map map){
    id = map["id"];
    name = map["name"];
    image = map["image"];
    List<Map> projectsData = map["projects"];
    projects = projectsData.map((e) => Project(e)).toList();
  }
}
class Project{
  int? id;
  String? title;
  String? price;
  String? currency;
  String? description;
  Project(Map map){
    id = map["id"];
    title = map["title"];
    price = map["price"];
    currency = map["currency"];
    description = map["description"];
  }
}