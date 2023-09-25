class Category{
  int? id;
  String? nameAr;
  String? nameEn;
  String? icon;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  String? parentId;
  String? type;
  String? donationType;
  Category(Map map){
    id = map["id"];
    nameAr = map["name_ar"];
    nameEn = map["name_en"];
    icon = map["icon"];
    createdAt = map["created_at"];
    updatedAt = map["updated_at"];
    deletedAt = map["deleted_at"];
    parentId = map["parent_id"];
    type = map["type"];
    donationType = map["donation_type"];
  }
}
class SubCategories{
  int? id;
  String? nameAr;
  String? nameEn;
  String? icon;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  String? parentId;
  String? type;
  String? donationType;
  SubCategories(Map map){
    id = map["id"];
    nameAr = map["name_ar"];
    nameEn = map["name_en"];
    icon = map["icon"];
    createdAt = map["created_at"];
    updatedAt = map["updated_at"];
    deletedAt = map["deleted_at"];
    parentId = map["parent_id"];
    type = map["type"];
    donationType = map["donation_type"];
  }
}