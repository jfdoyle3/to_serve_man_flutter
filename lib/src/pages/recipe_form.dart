import 'package:flutter/material.dart';
import 'package:to_serve_man/src/models/recipe_model.dart';

class RecipeForm extends StatelessWidget {
  RecipeForm({super.key});

  final _formKey = GlobalKey<FormState>();
  List<RecipeModel> recipeList = [];
  late String _title = '';
  late String _ingredients = '';

  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    print('--> Build: New Recipe Form');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        actions: [
          IconButton(
            onPressed: () {
              _submitForm(context);
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
                //----------------------
                // Recipe Title
                //
                const Text(
                  'Title',
                  style: TextStyle(fontSize: 18),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter atitle',
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
                //---------------------
                // Recipe Ingredients
                //
                const Text(
                  'Ingredients',
                  style: TextStyle(fontSize: 18),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter ingredients',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a ingredients';
                    }
                    return null;
                  },
                  onSaved: (value) => _ingredients = value!,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submitForm(context) {
    // TODO: Save recipe data to database or API
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      RecipeModel user = RecipeModel(_title, _ingredients);
      Navigator.of(context).pushNamed(
        '/second',
        arguments: user,
      );
    }
  }
}




// // Notes:
//  // Recipe newRecipe = Recipe.fromJsonString(_title);
//       // recipeList.add(newRecipe);
//       // Navigator.push(
//       //   context,
//       //   MaterialPageRoute(
//       //       builder: (context) =>),
//       // );