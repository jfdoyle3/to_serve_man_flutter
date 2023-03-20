import './ingredient.dart';

class Recipe {
  final String _recipeName;
  final List _ingredients;
  final List _steps;

  Recipe(this._recipeName, this._ingredients, this._steps);

  List get steps => _steps;
  List get ingredients => _ingredients;
  String get recipeName => _recipeName;


}
