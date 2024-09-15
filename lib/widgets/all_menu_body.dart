import 'package:flutter/material.dart';
import 'package:pizza_app/widgets/custom_small_pizza_card.dart';

class AllMenuBody extends StatelessWidget {
  const AllMenuBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
          childAspectRatio: 0.47,
        ),
        itemBuilder: (context, index) {
          return const CustomSmallPizzaCard();
        },
      ),
    );
  }
}
