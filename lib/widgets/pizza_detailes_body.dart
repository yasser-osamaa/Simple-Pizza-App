import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pizza_app/models/pizza_model.dart';
import 'package:pizza_app/widgets/add_item_row_details.dart';
import 'package:pizza_app/widgets/custom_button.dart';
import 'package:pizza_app/widgets/custom_container_content_of_pizza.dart';
import 'package:pizza_app/widgets/detaile_image.dart';

class PizzaDetailsBody extends StatelessWidget {
  const PizzaDetailsBody({
    super.key,
    required this.pizza,
  });
  final PizzaModel pizza;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            DetaileImage(
              image: pizza.optionImg,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.1),
                    offset: const Offset(0, 100),
                    blurRadius: 200,
                  ),
                ],
              ),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 260,
                            child: Text(
                              pizza.pizzaName,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                r'$'
                                '${pizza.pizzaPrice - pizza.pizzaPrice * .2}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                  color: Colors.blue,
                                ),
                              ),
                              Text(
                                r'$' '${pizza.pizzaPrice}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomContentOfPizza(
                              icon: const Icon(
                                FontAwesomeIcons.fire,
                                color: Colors.red,
                              ),
                              text: '${pizza.content.caloires} Calories',
                            ),
                          ),
                          Expanded(
                            child: CustomContentOfPizza(
                              icon: const Icon(
                                FontAwesomeIcons.dumbbell,
                                color: Colors.red,
                              ),
                              text: '${pizza.content.protien} Protein',
                            ),
                          ),
                          Expanded(
                            child: CustomContentOfPizza(
                              icon: const Icon(
                                FontAwesomeIcons.bowlFood,
                                color: Colors.red,
                              ),
                              text: '${pizza.content.fat} Fat',
                            ),
                          ),
                          Expanded(
                            child: CustomContentOfPizza(
                              icon: const Icon(
                                FontAwesomeIcons.carrot,
                                color: Colors.red,
                              ),
                              text: '${pizza.content.carp} Carbs' ,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const AddItemRow(
                        text: 'Make Yours',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const AddItemRow(
                        text: 'Ingredients',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const AddItemRow(
                        text: 'Add Extra',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const CustomButton(),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
