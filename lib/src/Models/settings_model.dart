import 'package:flutter/material.dart';

class SettingsModel extends ChangeNotifier {
  ThemeData _appBarTheme = ThemeData.light();

//  Setters / Getters

  set appBarTheme(ThemeData theme) {
    _appBarTheme = theme;
    notifyListeners();
  }

  ThemeData get appBarTheme => _appBarTheme;
}
