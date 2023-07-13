import 'package:flutter/material.dart';
import 'package:to_serve_man/src/models/cookbook_model.dart';
import 'package:to_serve_man/src/models/recipe_model.dart';

class SecondPage extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  // final String data;
  RecipeModel recipe;
  CookBookModel cookBook = CookBookModel();

  SecondPage({super.key, required this.recipe});
  // cookbook page
  @override
  Widget build(BuildContext context) {
    cookBook.addRecipe(recipe);
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
              'Title: ${recipe.getTitle}\n${recipe.getIngredients}\n${cookBook.cookBookSize()}',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
