import 'package:flutter/material.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({super.key});

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Name'),
      ),
      bottomNavigationBar: NavigationBar(destinations: const [
        NavigationDestination(
            icon: Icon(Icons.description), label: 'Description'),
        NavigationDestination(icon: Icon(Icons.blender), label: 'Ingredients'),
        NavigationDestination(
            icon: Icon(Icons.directions), label: 'Directions'),
      ]),
    );
  }
}
