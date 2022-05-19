import './ingredient.dart';


class Recipe {
    final String recipeName;
    List ingredients;
    List steps;

    Recipe(this.recipeName, this.ingredients, this.steps);
}