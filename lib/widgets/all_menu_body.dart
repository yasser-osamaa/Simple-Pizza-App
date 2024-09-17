import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pizza_app/constants.dart';
import 'package:pizza_app/models/pizza_model.dart';
import 'package:pizza_app/widgets/custom_small_pizza_card.dart';

class AllMenuBody extends StatelessWidget {
  const AllMenuBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
      child: FutureBuilder<QuerySnapshot>(
        future: FirebaseFirestore.instance.collection(kMenuCollection).get(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Has an Error!!'),
            );
          }
          if (snapshot.hasData) {
            List<PizzaModel> menu = [];
            for (var pizza in snapshot.data!.docs) {
              menu.add(
                PizzaModel.fromJson(pizza),
              );
            }
            return GridView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: menu.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
                childAspectRatio: 0.47,
              ),
              itemBuilder: (context, index) {
                return CustomSmallPizzaCard(
                  item: menu[index],
                );
              },
            );
          } else {
            return const Center(
              child: Text('Has an Error!!'),
            );
          }
        },
      ),
    );
  }
}
