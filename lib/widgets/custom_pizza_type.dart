import 'package:flutter/material.dart';

class CustomPizzaType extends StatelessWidget {
  const CustomPizzaType({
    super.key,
    required this.type,
    this.fontSize = 15,
  });
  final String type;
  final double? fontSize;
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
            child: Text(
              '🔥SPICY',
              style: TextStyle(
                fontSize: fontSize,
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
            child: Text(
              '☺ BALANCE',
              style: TextStyle(
                fontSize: fontSize,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
  }
}
