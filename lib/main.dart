import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pizza_app/firebase_options.dart';
import 'package:pizza_app/views/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const PizzaApp());
}

class PizzaApp extends StatelessWidget {
  const PizzaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      routes: {
        HomeView.id: (context) => const HomeView(),
      },
      initialRoute: HomeView.id,
    );
  }
}
