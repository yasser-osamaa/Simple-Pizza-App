import 'package:flutter/material.dart';
import 'package:pizza_app/models/pizza_model.dart';
import 'package:pizza_app/widgets/pizza_detailes_body.dart';

class PizzaDetailsView extends StatelessWidget {
  const PizzaDetailsView({super.key});
  static String id = 'PizzaDetailes';

  @override
  Widget build(BuildContext context) {
    final PizzaModel pizza =
        ModalRoute.of(context)!.settings.arguments as PizzaModel;

    return Scaffold(
      body: PizzaDetailsBody(
        pizza: pizza,
      ),
    );
  }
}
