import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:to_serve_man/src/Models/recipe.dart';

class CookbookModel extends ChangeNotifier {
  final List<Recipe> _recipes = [];

  UnmodifiableListView<Recipe> get recipes => UnmodifiableListView(_recipes);

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
