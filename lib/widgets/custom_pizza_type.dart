import 'package:flutter/material.dart';

class CustomPizzaType extends StatelessWidget {
  const CustomPizzaType({
    super.key,
    required this.type,
  });
  final String type;
  @override
  Widget build(BuildContext context) {
    return type == 'spicy'
        ? Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 3,
            ),
            decoration: BoxDecoration(
              color: Colors.red[100],
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Text(
              '🔥SPICY',
              style: TextStyle(
                fontSize: 15,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        : Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 3,
            ),
            decoration: BoxDecoration(
              color: Colors.green[100],
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Text(
              '☺ BALANCE',
              style: TextStyle(
                fontSize: 10,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
  }
}
