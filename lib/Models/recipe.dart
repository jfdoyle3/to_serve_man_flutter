import 'package:flutter/material.dart';

import './ingredient.dart';

class Recipe extends StatefulWidget {
  final String recipeName;
  List ingredients;
  List steps;

  Recipe(this.recipeName, this.ingredients, this.steps, {Key? key})
      : super(key: key);

  @override
  RecipeState createState() => RecipeState();
}

class RecipeState extends State<Recipe> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(backgroundColor: Colors.blue, title: const Text('Recipe')),
        body: Column(
          children: [
            Container(
              child: Row(
               
              ),
            ),
          ],
        )
    );
  }
}
