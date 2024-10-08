import 'package:flutter/material.dart';

class CustomVegType extends StatelessWidget {
  const CustomVegType({
    super.key,
    required this.type,
    this.fontSize = 15,
  });
  final double? fontSize;
  final String type;
  @override
  Widget build(BuildContext context) {
    return type == 'non veg'
        ? Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 3,
            ),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Text(
              'NON-VEG',
              style: TextStyle(
                fontSize: fontSize,
                color: Colors.white,
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
              color: Colors.green,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Text(
              'PURE-VEG',
              style: TextStyle(
                fontSize: fontSize,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
  }
}
