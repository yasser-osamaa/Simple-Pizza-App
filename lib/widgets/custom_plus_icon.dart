import 'package:flutter/material.dart';

class CustomPlusIcon extends StatelessWidget {
  const CustomPlusIcon({super.key, this.size = 40});
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(
        Icons.add,
        color: Colors.white,
        size: size,
      ),
    );
  }
}
