import 'dart:convert';

class Recipe {
  String? _title;
  String? _ingredients;

  Recipe(this._title, this._ingredients);

  String? get getTitle => _title;
  set setTitle(String title) {
    _title = title;
  }

  String? get getIngredients => _ingredients;
  set setIngredients(String ingredients) {
    _ingredients = ingredients;
  }

  // factory constructor Recipe.fromMap
  factory Recipe.fromMap(Map<String, Object> map) {
    final title = map['title'] as String;
    final ingredients = map['ingredients'] as String;

    return Recipe(title, ingredients);
  }

  Recipe.fromJson(Map<String, dynamic> json) {
    _title = json['title'];
    _ingredients = json['ingredients'];
  }

  Recipe.fromJsonString(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    _title = json['title'];
    _ingredients = json['ingredients'];
  }
}
