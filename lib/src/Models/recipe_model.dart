class RecipeModel {
  String _title = '';

  RecipeModel(this._title);

  String get getTitle => _title;

  set title(String title) {
    _title = title;
  }

//   factory constructor Recipe.fromMap
//   factory RecipeModel.fromMap(Map<String, Object> map) {
//     final title = map['title'] as String;

//     return RecipeModel(title);
//   }

//   RecipeModel.fromJson(Map<String, dynamic> json) {
//     _title = json['title'];
//   }

//   RecipeModel.fromJsonString(String jsonString) {
//     Map<String, dynamic> json = jsonDecode(jsonString);
//     _title = json['title'];
//   }
// }
}
