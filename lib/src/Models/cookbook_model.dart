import 'dart:collection';

import 'package:to_serve_man/src/Models/recipe.dart';

class CookbookModel {
  final List<Recipe> _recipes = [];
  late Recipe _recipe;

  UnmodifiableListView<Recipe> get recipes => UnmodifiableListView(_recipes);

  /// The current catalog. Used to construct items from numeric ids.
  Recipe get catalog => _recipe;

  set recipe(Recipe newRecipe) {
    _recipe = newRecipe;
  }

  /// List of items in the cookbook
  List<Recipe> get items => _recipeId.map((id) => _recipe.getById(id)).toList();

  void add(Recipe recipe) {
    _recipes.add(recipe);
  }

  void removeAll() {
    _recipes.clear();
  }

  void delete(Recipe recipe) {
    _recipes.remove(recipe);
  }
}
