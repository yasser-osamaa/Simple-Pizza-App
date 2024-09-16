import 'package:flutter/material.dart';
import 'package:pizza_app/widgets/custom_plus_icon.dart';

class AddItemRow extends StatelessWidget {
  const AddItemRow({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        const CustomPlusIcon(
          size: 32,
          color: Colors.blue,
        ),
      ],
    );
  }
}
