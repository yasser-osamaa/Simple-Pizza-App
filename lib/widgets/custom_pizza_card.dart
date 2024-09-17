import 'package:flutter/material.dart';
import 'package:pizza_app/models/pizza_model.dart';
import 'package:pizza_app/views/pizza_details_view.dart';
import 'package:pizza_app/widgets/circle_pizza_image.dart';
import 'package:pizza_app/widgets/custom_pizza_type.dart';
import 'package:pizza_app/widgets/custom_plus_icon.dart';
import 'package:pizza_app/widgets/custom_veg_type.dart';

class CustomPizzaCard extends StatelessWidget {
  const CustomPizzaCard({
    super.key,
    required this.item,
  });
  final PizzaModel item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, PizzaDetailsView.id, arguments: item);
      },
      child: Container(
        width: 240,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(150),
            topRight: Radius.circular(150),
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.1),
              offset: const Offset(0, 100),
              blurRadius: 200,
            ),
          ],
        ),
        child: Card(
          elevation: 20,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(150),
              topRight: Radius.circular(150),
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: -0,
                child: CirclePizzaImage(
                  img: item.pizzaImg,
                  raduis: 110,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 220,
                    ),
                    Row(
                      children: [
                        CustomVegType(
                          fontSize: 10,
                          type: item.vegType,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomPizzaType(
                          fontSize: 10,
                          type: item.spicyType,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      item.pizzaName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      item.pizzaDesc,
                      maxLines: 3,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          r'$' '${item.pizzaPrice - item.pizzaPrice * .2}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            color: Colors.blue,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          r'$' '${item.pizzaPrice}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        const CustomPlusIcon(),
                      ],
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
