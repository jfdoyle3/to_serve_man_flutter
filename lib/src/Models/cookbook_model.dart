import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:to_serve_man/src/Models/recipe.dart';

class CookbookModel extends ChangeNotifier {
  final List<Recipe> _recipes = [];
  late Recipe _recipe;

  UnmodifiableListView<Recipe> get recipes => UnmodifiableListView(_recipes);

  /// The current catalog. Used to construct items from numeric ids.
  Recipe get catalog => _recipe;

  set recipe(Recipe newRecipe) {
    _recipe = newRecipe;
    // Notify listeners, in case the new catalog provides information
    // different from the previous one. For example, availability of an item
    // might have changed.
    notifyListeners();
  }

  /// List of items in the cart.
  List<Recipe> get items => _recipeId.map((id) => _recipe.getById(id)).toList();

  void add(Recipe recipe) {
    _recipes.add(recipe);
    notifyListeners();
  }

  void removeAll() {
    _recipes.clear();
    notifyListeners();
  }

  void delete(Recipe recipe) {
    _recipes.remove(recipe);
    notifyListeners();
  }
}
