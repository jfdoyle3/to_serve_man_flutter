import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:to_serve_man/Widgets/Recipe/recipe_list_page.dart';

import '../../../Models/recipe.dart';

class NewRecipePage extends StatefulWidget {
  const NewRecipePage({super.key});

  @override
  State<NewRecipePage> createState() => _NewRecipePageState();
}

class _NewRecipePageState extends State<NewRecipePage> {
  final _formKey = GlobalKey<FormState>();
  List<Recipe> recipeList = [];
  String _title = '';

  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Recipe'),
        actions: [
          IconButton(
            onPressed: () {
              _submitForm();
            },
            icon: const Icon(Icons.save),
          ),
          IconButton(
            onPressed: () {
              // Cancel New Recipe -think of using back arrow to cancel new creation
              //     clears object before created - pop up box y/n
              // _submitForm();
            },
            icon: const Icon(Icons.cancel),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Title',
                  style: TextStyle(fontSize: 18),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter recipe title',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a title';
                    }
                    return null;
                  },
                  onSaved: (value) => _title = value!,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    // TODO: Save recipe data to database or API
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Recipe newRecipe = Recipe.fromJsonString(_title);
      // recipeList.add(newRecipe);
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => RecipeListPage(recipe: newRecipe)),
      );
    }
  }
}
