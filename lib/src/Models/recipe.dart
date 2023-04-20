import 'dart:convert';

class Recipe {
  String? _title;

  Recipe(this._title);

  String? get getTitle => _title;
  set setTitle(String title) {
    _title = title;
  }

  // factory constructor Recipe.fromMap
  factory Recipe.fromMap(Map<String, Object> map) {
    final title = map['title'] as String;

    return Recipe(title);
  }

  Recipe.fromJson(Map<String, dynamic> json) {
    title = json['title'];
  }

  Recipe.fromJsonString(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    title = json['title'];
  }
}
