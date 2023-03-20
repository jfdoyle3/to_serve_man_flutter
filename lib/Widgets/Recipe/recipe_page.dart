import 'package:flutter/material.dart';
import 'AddRecipe/add_description_page.dart';
import 'AddRecipe/add_directions_page.dart';
import 'AddRecipe/add_ingredients_page.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({super.key});

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  int currentPage = 0;
  List<Widget> pages = const [
    AddDescriptionPage(),
    AddIngredientsPage(),
    AddDirectionsPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Recipe Root'),
      ),
      body: pages[currentPage],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.description), label: 'Description'),
          NavigationDestination(
              icon: Icon(Icons.blender), label: 'Ingredients'),
          NavigationDestination(
              icon: Icon(Icons.directions), label: 'Directions'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
      ),
    );
  }
}
