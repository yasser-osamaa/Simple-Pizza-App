import 'package:flutter/material.dart';
import 'package:pizza_app/widgets/pizza_detailes_body.dart';

class PizzaDetailsView extends StatelessWidget {
  const PizzaDetailsView({super.key});
  static String id = 'PizzaDetailes';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PizzaDetailsBody(),
    );
  }
}
