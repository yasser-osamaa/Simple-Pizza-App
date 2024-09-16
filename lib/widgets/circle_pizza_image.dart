import 'package:flutter/material.dart';

class CirclePizzaImage extends StatelessWidget {
  const CirclePizzaImage({
    super.key,
    required this.raduis,
    this.img,
  });
  final String? img;
  final double raduis;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: raduis,
      backgroundImage: NetworkImage(
        img ??
            'https://media.gettyimages.com/id/83465439/photo/whole-pepperoni-pizza.jpg?s=612x612&w=0&k=20&c=eLzX63I4fRf9mkKuJeUvwYJ66K_qLezct4SbsUtEbdM=',
      ),
    );
  }
}
