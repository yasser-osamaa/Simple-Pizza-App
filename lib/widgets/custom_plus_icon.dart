
import 'package:flutter/material.dart';

class CustomPlusIcon extends StatelessWidget {
  const CustomPlusIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Icon(
        Icons.add,
        color: Colors.white,
        size: 40,
      ),
    );
  }
}
