import 'package:my_app/main.dart';

void main() {
  List<Map> allMeals = [
  {
    "name": "Burger",
    "image": "20",
    "extras": {
      "bread": [
        {"size": "big", "price": "5"},
        {"size": "medium", "price": "3"},
        {"size": "small", "price": "2"},
      ],
      "cheese": [
        {"quantity": "50 gm", "price": "10"},
        {"quantity": "20 gm", "price": "5"},
      ]
    },
    "ingreditns": [
      {
        "beefburger": ["meat", "anion", "olives"],
        "price": 20,
        "currency": "nis"
      },
      {
        "checkenBurger": ["checkin", "tomato"],
        "price": 15,
        "currency": "nis"
      }
    ]
  }
];
  Meals test = Meals(allMeals);
  print(test.meals?[0].name);
}
class Meals{
  List<Meal>? meals;
  Meals(List list){
    meals = list.map((e) => Meal(e)).toList();
  }
}
class Meal {
  String? name;
  String? image;
  List<Extras>? extras;
  List<Ingredients>? ingredietns;
  Meal(Map map) {
    name = map["name"];
    image = map["image"];
    Map<String, List<Map>> extrasData = map["extras"];
    extras = extrasData.keys.map((e) {
      return Extras(extrasData[e]!, e);
    }).toList();
    List<Map> ingreditnsData = map["ingreditns"];
    ingredietns = ingreditnsData.map((e) {
      return Ingredients(e);
    }).toList();
  }
}

class Extras {
  String? name;
  List<ExtraItem>? extraItems;
  Extras(List<Map> extrasItemsList, String name) {
    this.name = name;
    extraItems = extrasItemsList.map((e) {
      return ExtraItem(e);
    }).toList();
  }
}

class ExtraItem {
  String? size;
  String? price;
  String? quantity;
  ExtraItem(Map map) {
    size = map["size"];
    price = map["price"];
    quantity = map["quantity"];
  }
}

class Ingredients {
  String? ingredientname;
  List<String>? contents;
  int? price;
  String? currency;
  Ingredients(Map map) {
    price = map["price"];
    currency = map["currency"];
    ingredientname = map.keys.first;
    contents = map[ingredientname];
  }
}