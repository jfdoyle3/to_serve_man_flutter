import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  hintColor: Colors.lightBlueAccent,
  scaffoldBackgroundColor: Colors.grey[100],
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.blue,
  hintColor: Colors.lightBlueAccent,
  scaffoldBackgroundColor: Colors.black87,
);

class SettingsModel extends ChangeNotifier {
  bool _darkTheme = false;
  SharedPreferences? _preferences;
  bool _hasLoaded = false;

  bool get darkTheme => _darkTheme;
  bool get hasLoaded => _hasLoaded;

  set hasLoaded(bool value) {
    _hasLoaded = value;
    notifyListeners();
  }

  SettingsModel() {
    _loadSettingsFromPrefs();
  }
// Model Constructor - loadSettingsFromPrefs: initializes a Preferences instance.
  _initializePreferences() async {
    _preferences ??= await SharedPreferences.getInstance();
  }

// Model Constructor: initializes Preferences and Loads an instance.
  _loadSettingsFromPrefs() async {
    await _initializePreferences();
    _darkTheme = _preferences?.getBool('darkTheme') ?? false;
    notifyListeners();
  }

// save: get instance then sets preference.
  _saveSettingsToPrefs() async {
    await _initializePreferences();
    _preferences?.setBool('darkTheme', _darkTheme);
  }

// toggle theme method: toggle bool. and saves to prefs.
  void toggleTheme() {
    _darkTheme = !_darkTheme;
    _saveSettingsToPrefs();
    notifyListeners();
  }
}
