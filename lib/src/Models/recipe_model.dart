import 'dart:convert';

class RecipeModel {
  String _title = '';
  String _ingredients = '';

  RecipeModel(this._title, this._ingredients);
  RecipeModel.title(this._title);

  String get getTitle => _title;

  set title(String title) {
    _title = title;
  }

  String get getIngredients => _ingredients;

  set ingredients(String ingredients) {
    _ingredients = ingredients;
  }

  // factory constructor Recipe.fromMap
  factory RecipeModel.fromMap(Map<String, Object> map) {
    final title = map['title'] as String;

    return RecipeModel.title(title);
  }

  RecipeModel.fromJson(Map<String, dynamic> json) {
    _title = json['title'];
  }

  RecipeModel.fromJsonString(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    _title = json['title'];
  }
}
