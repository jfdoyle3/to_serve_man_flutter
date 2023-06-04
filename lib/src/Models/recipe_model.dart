// import 'dart:convert';

import 'package:flutter/material.dart';

class RecipeModel extends ChangeNotifier {
  String _title = '';

  String? get title => _title;

  set title(String title) {
    _title = title;
    notifyListeners();
  }

  // factory constructor Recipe.fromMap
  // factory RecipeModel.fromMap(Map<String, Object> map) {
  //   final title = map['title'] as String;

  //   return RecipeModel(title);
  // }

  // RecipeModel.fromJson(Map<String, dynamic> json) {
  //   _title = json['title'];
  // }

  // RecipeModel.fromJsonString(String jsonString) {
  //   Map<String, dynamic> json = jsonDecode(jsonString);
  //   _title = json['title'];
  // }
}
