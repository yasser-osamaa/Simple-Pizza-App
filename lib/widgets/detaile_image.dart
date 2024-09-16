import 'package:flutter/material.dart';

class DetaileImage extends StatelessWidget {
  const DetaileImage({
    super.key,
    this.image,
  });
  final String? image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Image(
        image: NetworkImage(image ??
            'https://media.istockphoto.com/id/1442417585/photo/person-getting-a-piece-of-cheesy-pepperoni-pizza.jpg?s=612x612&w=0&k=20&c=k60TjxKIOIxJpd4F4yLMVjsniB4W1BpEV4Mi_nb4uJU='),
        fit: BoxFit.fill,
      ),
    );
  }
}
