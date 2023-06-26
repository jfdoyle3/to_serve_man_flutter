import 'package:flutter/material.dart';
import 'package:to_serve_man/src/pages/cookbook/cookbook_page.dart';
import 'package:to_serve_man/src/pages/home_page.dart';

import '../pages/cookbook/new_recipe_page.dart';
import '../pages/settings/settings_page.dart';

class RouteManager {
  static const String homePage = '/';
  static const String cookBookPage = '/cookBookPage';
  static const String newRecipePage = '/newRecipePage';
  static const String settingsPage = '/settingsPage';
  //static const String secondPage='/secondPage';

  static Route<dynamic> generatedRoutes(RouteSettings settings) {
    // Pushing arguments through Objects while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (context) => HomePage(
            context: context,
          ),
        );
      case cookBookPage:
        return MaterialPageRoute(
          builder: (context) => const CookBookPage(),
        );
      case newRecipePage:
        return MaterialPageRoute(
          builder: (context) => const NewRecipePage(),
        );
      case settingsPage:
        return MaterialPageRoute(
          builder: (context) => const SettingsPage(),
        );
      // case secondPage:
      //   return MaterialPageRoute(
      //     builder: (_) => SecondPage(
      //        data: args,
      //      ),
      //   );

      default:
        throw const FormatException('Error: Route not Found!');
    }
  }
}
