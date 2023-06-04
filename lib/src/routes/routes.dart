import 'package:flutter/material.dart';
import 'package:to_serve_man/src/pages/cookbook_page.dart';
import 'package:to_serve_man/src/pages/home_page.dart';

import '../pages/new_recipe_page.dart';

class RouteManager {
  static const String homePage = '/';
  static const String cookBookPage = '/cookBookPage';
  static const String newRecipePage = '/newRecipePage';

  static Route<dynamic> generatedRoutes(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      case cookBookPage:
        return MaterialPageRoute(
          builder: (context) => const CookBookPage(),
        );
      case newRecipePage:
        return MaterialPageRoute(
          builder: (context) => const NewRecipePage(),
        );

      default:
        throw const FormatException('Error: Route not Found!');
    }
  }
}
