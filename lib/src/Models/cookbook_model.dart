import 'package:flutter/material.dart';
import 'package:to_serve_man/src/models/recipe_model.dart';

class CookBookModel extends ChangeNotifier {
  final List<RecipeModel> _cookBook = [];

  List<RecipeModel> get recipes => _cookBook;

  void addRecipe(RecipeModel recipe) {
    _cookBook.add(recipe);
    notifyListeners();
  }

  void deleteRecipe(RecipeModel recipe) {
    _cookBook.remove(recipe);
    notifyListeners();
  }

  int cookBookSize() {
    return _cookBook.length;
  }
}
