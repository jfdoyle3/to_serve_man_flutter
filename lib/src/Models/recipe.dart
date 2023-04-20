import 'dart:convert';

class Recipe {
  String? title;

  Recipe(this.title);

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
