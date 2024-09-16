import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pizza_app/widgets/add_item_row_details.dart';
import 'package:pizza_app/widgets/custom_button.dart';
import 'package:pizza_app/widgets/custom_container_content_of_pizza.dart';
import 'package:pizza_app/widgets/detaile_image.dart';

class PizzaDetailsBody extends StatelessWidget {
  const PizzaDetailsBody({
    super.key,
  });

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
            const DetaileImage(),
            const SizedBox(
              height: 30,
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
              child: const Card(
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 260,
                            child: Text(
                              'Truffle Temptation Extravaganza',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                r'$80.00',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                  color: Colors.blue,
                                ),
                              ),
                              Text(
                                r'$85.00',
                                style: TextStyle(
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
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomContentOfPizza(
                              icon: Icon(
                                FontAwesomeIcons.fire,
                                color: Colors.red,
                              ),
                              text: '475 Calories',
                            ),
                          ),
                          Expanded(
                            child: CustomContentOfPizza(
                              icon: Icon(
                                FontAwesomeIcons.dumbbell,
                                color: Colors.red,
                              ),
                              text: '36g Protein',
                            ),
                          ),
                          Expanded(
                            child: CustomContentOfPizza(
                              icon: Icon(
                                FontAwesomeIcons.bowlFood,
                                color: Colors.red,
                              ),
                              text: '21g Fat',
                            ),
                          ),
                          Expanded(
                            child: CustomContentOfPizza(
                              icon: Icon(
                                FontAwesomeIcons.carrot,
                                color: Colors.red,
                              ),
                              text: '38g Carbs',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AddItemRow(
                        text: 'Make Yours',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AddItemRow(
                        text: 'Ingredients',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AddItemRow(
                        text: 'Add Extra',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomButton(),
                      SizedBox(
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
