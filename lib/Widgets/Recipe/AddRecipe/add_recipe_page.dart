import 'package:flutter/material.dart';

class AddRecipePage extends StatefulWidget {
  const AddRecipePage({super.key});

  @override
  State<AddRecipePage> createState() => _AddRecipePageState();
}

class _AddRecipePageState extends State<AddRecipePage> {
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: textController,
        ),
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
      body: TextField(
        autocorrect: true,
        controller: textController,
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
