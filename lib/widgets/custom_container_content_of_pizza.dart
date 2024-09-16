
import 'package:flutter/material.dart';

class CustomContentOfPizza extends StatelessWidget {
  const CustomContentOfPizza({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 80,
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.sports_gymnastics,
                color: Colors.red,
                size: 30,
              ),
              Text(
                '475 Calories',
                style: TextStyle(
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//fit: BoxFit.fill,