import 'package:flutter/material.dart';
import 'package:pizza_app/widgets/all_menu_body.dart';

class AllMenuView extends StatelessWidget {
  const AllMenuView({super.key});
  static String id = 'AllMenuView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        clipBehavior: Clip.none,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              '🍕PIZZA',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Text(
              'Upgrade my plane',
              style: TextStyle(
                color: Color.fromARGB(255, 34, 133, 214),
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.short_text_rounded,
              size: 50,
            ),
          ),
        ],
      ),
      body: const AllMenuBody(),
    );
  }
}
