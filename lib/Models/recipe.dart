import './ingredient.dart';

class Recipe {
  late final String _recipeName;
  late final List _ingredients;
  late final List _steps;

  Recipe(this._recipeName, this._ingredients, this._steps);

  List get steps => _steps;
  List get ingredients => _ingredients;
  String get recipeName => _recipeName;

  set steps(List value) {
    _steps = value;
  }

  set ingredients(List value) {
    _ingredients = value;
  }

  set recipeName(String value) {
    _recipeName = value;
  }
}