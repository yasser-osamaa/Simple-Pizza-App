import 'package:flutter/material.dart';
import 'package:pizza_app/views/pizza_details_view.dart';
import 'package:pizza_app/widgets/circle_pizza_image.dart';
import 'package:pizza_app/widgets/custom_pizza_type.dart';
import 'package:pizza_app/widgets/custom_plus_icon.dart';
import 'package:pizza_app/widgets/custom_veg_type.dart';

class CustomSmallPizzaCard extends StatelessWidget {
  const CustomSmallPizzaCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, PizzaDetailsView.id);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(100),
            topRight: Radius.circular(100),
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
                left: 12,
                child: CirclePizzaImage(
                  raduis: 70,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 130,
                    ),
                    RowPizzaType(),
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
                            fontSize: 18,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        CustomPlusIcon(
                          size: 30,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          r'$85.00',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                          textAlign: TextAlign.left,
                        ),
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

class RowPizzaType extends StatelessWidget {
  const RowPizzaType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomVegType(
          fontSize: 9,
          type: 'veg',
        ),
        SizedBox(
          width: 5,
        ),
        CustomPizzaType(
          fontSize: 9,
          type: 'spicy',
        ),
      ],
    );
  }
}
