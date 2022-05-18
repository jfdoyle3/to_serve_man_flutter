import './ingredient.dart';


class Recipe {
    late final String recipeName;
    late List<Ingredient> ingredients;
    late List<String> steps;

  void addIngredient(int amount, String measurement, String name){
    ingredients.add(Ingredient(amount: amount, measurement: measurement, name: name));
  }

  void addStep(String step){
    steps.add(step);
  }
}