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
  print(test.meals?[0].extras?.bread?.breadDetails?[0].size);
}
class Meals{
  List<OneMeal>? meals;
  Meals(List list){
    meals = list.map((e) => OneMeal(e)).toList();
  }
}
class OneMeal{
  /*
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
      ],
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
  */
  String? name;
  String? image;
  Extras? extras ;
  List<IngreditnsClass>? ingreditns;
  OneMeal(Map map){
    name = map["name"];
    image = map["image"];
    extras = Extras(map["extras"]);
    List data = map["ingreditns"];
    ingreditns = data.map((e) => IngreditnsClass(e)).toList();
  }
}
class Extras{
  /*
    "extras": {
      "bread": [
        {"size": "big", "price": "5"},
        {"size": "medium", "price": "3"},
        {"size": "small", "price": "2"},
      ],
      "cheese": [
        {"quantity": "50 gm", "price": "10"},
        {"quantity": "20 gm", "price": "5"},
      ],
    },
  */
  BreadData? bread ;
  ChesseData? chesse ;
  Extras(Map map){
    bread = BreadData(map["bread"]);
    chesse = ChesseData(map["cheese"]);
  }
}
class BreadData{
  /*
    "bread": [
    {"size": "big", "price": "5"},
    {"size": "medium", "price": "3"},
    {"size": "small", "price": "2"},
  ],
  */
  List<BreadDetails>? breadDetails;
  BreadData(List list){
    breadDetails = list.map((e) => BreadDetails(e)).toList();
  }
}
class BreadDetails{
  /*
  {"size": "big", "price": "5"},
  */
  String? size;
  String? price;
  BreadDetails(Map map){
    size = map["size"];
    price = map["price"];
  }
}
class ChesseData{
  /*
  "cheese": [
    {"quantity": "50 gm", "price": "10"},
    {"quantity": "20 gm", "price": "5"},
  ]
  */
  List<OneChesseMap>? oneChesseMap;
  ChesseData(List list){
    oneChesseMap = list.map((e) => OneChesseMap(e)).toList();
  }
}
class OneChesseMap{
  /*
  {"quantity": "50 gm", "price": "10"},
  */
  String? quantity;
  String? price;
  OneChesseMap(Map map){
    quantity = map["quantity"];
    price = map["price"];
  }
}
class IngreditnsClass{
  List<String>? beefburger;
  int? price;
  String? currency;
  List<String>? checkenBurger;
  IngreditnsClass(Map map){
    if(map["beefburger"] == null){
      checkenBurger = map["checkenBurger"];
    }else{
      beefburger = map["beefburger"];
    }
    price = map["price"];
    currency = map["currency"];
  }
}