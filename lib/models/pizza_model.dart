import 'package:pizza_app/constants.dart';

class PizzaModel {
  final String pizzaName;
  final String pizzaDesc;
  final String pizzaImg;
  final String optionImg;
  final String spicyType;
  final String vegType;
  final num pizzaPrice;
  final ContentModel content;

  PizzaModel(
      {required this.pizzaName,
      required this.pizzaDesc,
      required this.pizzaImg,
      required this.optionImg,
      required this.spicyType,
      required this.vegType,
      required this.pizzaPrice,
      required this.content});

  factory PizzaModel.fromJson(jsonData) {
    return PizzaModel(
      pizzaName: jsonData[kPizzaName],
      pizzaDesc: jsonData[kPizzaDesc],
      pizzaImg: jsonData[kPizzaImg],
      optionImg: jsonData[kOptionImg],
      spicyType: jsonData[kSpicyType],
      vegType: jsonData[kVegType],
      pizzaPrice: jsonData[kPizzaPrice],
      content: ContentModel.fromJson(
        jsonData[kContent],
      ),
    );
  }
}

class ContentModel {
  final num caloires;
  final num carp;
  final num fat;
  final num protien;

  ContentModel(
      {required this.caloires,
      required this.carp,
      required this.fat,
      required this.protien});

  factory ContentModel.fromJson(jsonData) {
    return ContentModel(
        caloires: jsonData[kCaloires],
        carp: jsonData[kCarp],
        fat: jsonData[kFat],
        protien: jsonData[kProtien]);
  }
}
