import 'package:flutter/material.dart';
import 'package:to_serve_man/src/Models/recipe_model.dart';

class CookBookPage extends StatelessWidget {
  final RecipeModel newRecipe;
  const CookBookPage({super.key, required this.newRecipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cookbook'),
      ),
      body: const Text('CookBook Page'),
    );
  }
}
