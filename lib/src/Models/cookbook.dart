import 'package:flutter/foundation.dart';
import 'package:to_serve_man/src/Models/recipe.dart';

class Cookbook extends ChangeNotifier {
  late final Recipe _recipe;

  Cookbook(this._recipe);
}
