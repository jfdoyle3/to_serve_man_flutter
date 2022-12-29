

import '../Models/cookbook.dart';
import '../Models/ingredient.dart';
import '../Models/recipe.dart';
import 'package:flutter/material.dart';


class AddRecipe extends StatelessWidget {
  const AddRecipe({super.key});

  static const String _title = 'Add Recipe';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: AddRecipeStatefulWidget(),
    );
  }
}

class AddRecipeStatefulWidget extends StatefulWidget {
  const AddRecipeStatefulWidget({super.key});

  @override
  State<AddRecipeStatefulWidget> createState() => _AddRecipeStatefulWidgetState();
}

class _AddRecipeStatefulWidgetState extends State<AddRecipeStatefulWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Name'),
      ),
      body: Center(child: Text('You have pressed the button $_count times.')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}
