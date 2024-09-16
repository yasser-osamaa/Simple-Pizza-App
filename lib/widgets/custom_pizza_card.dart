import 'package:flutter/material.dart';
import 'package:pizza_app/views/pizza_details_view.dart';
import 'package:pizza_app/widgets/circle_pizza_image.dart';
import 'package:pizza_app/widgets/custom_pizza_type.dart';
import 'package:pizza_app/widgets/custom_plus_icon.dart';
import 'package:pizza_app/widgets/custom_veg_type.dart';

class CustomPizzaCard extends StatelessWidget {
  const CustomPizzaCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, PizzaDetailsView.id);
      },
      child: Container(
        height: 420,
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
        child: const Card(
          elevation: 20,
          shape: RoundedRectangleBorder(
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
                  raduis: 110,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 210,
                    ),
                    Row(
                      children: [
                        CustomVegType(
                          type: 'veg',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomPizzaType(
                          type: 'spicy',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Mighty Meatbal',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Crafrt your masterpiece: endless topping, infinite delight!',
                      maxLines: 3,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          r'$80.00',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(
                          width: 5,
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
                        Spacer(
                          flex: 1,
                        ),
                        CustomPlusIcon(),
                      ],
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
