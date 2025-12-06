import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:live_test_tt/recipe.dart';

import 'json.dart';

class FoodRecipe extends StatefulWidget {
  const FoodRecipe({super.key});

  @override
  State<FoodRecipe> createState() => _FoodRecipeState();
}

class _FoodRecipeState extends State<FoodRecipe> {
  late final List<Recipe> recipes;

  List<Recipe> parseRecipes() {
    final decodedJson = jsonDecode(jsonData);
    final recipeList = decodedJson['recipes'];

    List<Recipe> recipes = [];
    for (var item in recipeList) {
      recipes.add(Recipe.fromJson(item));
    }
    return recipes;
  }

  @override
  void initState() {
    super.initState();
    recipes = parseRecipes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food Recipe"),
        backgroundColor: Colors.yellowAccent,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final food = recipes[index];

          return ListTile(
            leading: const Icon(Icons.fastfood_sharp),
            title: Text(
              food.title,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              food.description,
              style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
            ),
          );
        },
      ),
    );
  }
}
