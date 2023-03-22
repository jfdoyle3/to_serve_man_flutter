import './ingredient.dart';

class Recipe {
  late final String _recipeName;


  Recipe(this._recipeName);

  String get recipeName => _recipeName;

  set recipeName(String value) {
    _recipeName = value;
  }
}