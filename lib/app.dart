import 'package:flutter/material.dart';
import 'package:live_test_tt/food.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food Recipe",
      home: FoodRecipe(),
    );
  }
}
