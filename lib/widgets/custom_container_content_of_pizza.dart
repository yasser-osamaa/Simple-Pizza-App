import 'package:flutter/material.dart';

class CustomContentOfPizza extends StatelessWidget {
  const CustomContentOfPizza({
    super.key,
    this.icon,
    required this.text,
  });
  final Widget? icon;
  final String text;
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
      child: Card(
        elevation: 5,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon ??
                  const Icon(
                    Icons.local_pizza,
                    color: Colors.red,
                    size: 30,
                  ),
              const SizedBox(
                height: 5,
              ),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
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