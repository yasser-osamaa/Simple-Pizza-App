import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pizza_app/constants.dart';
import 'package:pizza_app/models/pizza_model.dart';
import 'package:pizza_app/views/all_menu_view.dart';
import 'package:pizza_app/widgets/custom_pizza_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    CollectionReference menu =
        FirebaseFirestore.instance.collection(kMenuCollection);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              'Pizza Palooza:\nBecause Ordinary\nIsn\'t an Option! ',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 420,
            child: FutureBuilder<QuerySnapshot>(
              future: menu.get(),
              builder: (content, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                }
                if (snapshot.hasData) {
                  List<PizzaModel> pizzaList = [];
                  for (var pizza in snapshot.data!.docs) {
                    pizzaList.add(
                      PizzaModel.fromJson(pizza),
                    );
                  }
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: pizzaList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          right: 15,
                        ),
                        child: CustomPizzaCard(
                          item: pizzaList[index],
                        ),
                      );
                    },
                  );
                } else {
                  return Center(child: Text('Error: ${snapshot.error}'));
                }
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AllMenuView.id);
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'View all ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 34, 133, 214),
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.blue,
                  size: 30,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
// ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: 6,
//               itemBuilder: (context, index) {
//                 return const Padding(
//                   padding: EdgeInsets.only(
//                     right: 15,
//                   ),
//                   child: CustomPizzaCard(),
//                 );
//               },
//             ),