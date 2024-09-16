import 'package:flutter/material.dart';

class CustomPlusIcon extends StatelessWidget {
  const CustomPlusIcon({super.key, this.size = 40, this.color = Colors.black});
  final double? size;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
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
