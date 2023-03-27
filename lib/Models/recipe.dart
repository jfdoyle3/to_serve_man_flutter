import 'dart:convert';

import './ingredient.dart';

class Recipe {
  String? recipeName;

  Recipe(this.recipeName);

  // factory constructor Person.fromMap
  factory Recipe.fromMap(Map<String, Object> map) {
    final recipeName = map['recipeName'] as String;

    return Recipe(recipeName);
  }

  Recipe.fromJson(Map<String, dynamic> json) {
    recipeName = json['recipeName'];
  }

  Recipe.fromJsonString(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    recipeName = json['recipeName'];
  }
}
