import 'package:flutter/material.dart';
import 'package:to_serve_man/src/models/recipe_model.dart';

class SecondPage extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  // final String data;
  RecipeModel recipe;
  List recipeList = [];

  SecondPage({super.key, required this.recipe});
  // cookbook page
  @override
  Widget build(BuildContext context) {
    recipeList.add(recipe);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Routing App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'User Name',
              style: TextStyle(fontSize: 50),
            ),
            Text(
              'Title: ${recipe.getTitle}\n',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
