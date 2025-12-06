import 'package:flutter/material.dart';

class FoodRecipe extends StatefulWidget {
  const FoodRecipe({super.key});

  @override
  State<FoodRecipe> createState() => _FoodRecipeState();
}

class _FoodRecipeState extends State<FoodRecipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Recipe"),
        backgroundColor: Colors.yellowAccent,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.restaurant_menu_sharp),
            title: Text(
              "Food Name",
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              "Description",
              style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
            ),
          );
        },
      ),
    );
  }
}
