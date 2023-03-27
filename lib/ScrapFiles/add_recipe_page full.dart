import 'package:flutter/material.dart';
import '../Widgets/Recipe/AddRecipe/add_directions_page.dart';
import '../Widgets/Recipe/AddRecipe/add_ingredients_page.dart';

class AddRecipePage extends StatefulWidget {
  const AddRecipePage({super.key});

  @override
  State<AddRecipePage> createState() => _AddRecipePageState();
}

class _AddRecipePageState extends State<AddRecipePage> {
  int currentPage = 0;
  List<Widget> pages = const [AddIngredientsPage(), AddDirectionsPage()];
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Recipe'),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Save to database');
            },
            icon: const Icon(Icons.save),
          ),
          IconButton(
            onPressed: () {
              debugPrint(
                  '''Cancel New Recipe -think of using back arrow to cancel new creation
                  clears object before created - pop up box y/n''');
            },
            icon: const Icon(Icons.cancel),
          ),
        ],
      ),
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
        selectedIndex: currentPage,
      ),
    );
  }
}
