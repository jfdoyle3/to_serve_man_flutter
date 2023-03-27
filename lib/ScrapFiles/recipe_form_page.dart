import 'package:flutter/material.dart';

class RecipeFormPage extends StatefulWidget {
  @override
  _RecipeFormPageState createState() => _RecipeFormPageState();
}

class _RecipeFormPageState extends State<RecipeFormPage> {
  final _formKey = GlobalKey<FormState>();

  // Form fields
  String _title = '';
  String _description = '';
  String _ingredients = '';
  String _instructions = '';
  String _imageUrl = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Recipe'),
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
                const SizedBox(height: 16),
                const Text(
                  'Description',
                  style: TextStyle(fontSize: 18),
                ),
                // Description Box
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter recipe description',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                  onSaved: (value) => _description = value!,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Ingredients',
                  style: TextStyle(fontSize: 18),
                ),
                // Ingredients Box
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter recipe ingredients (separated by commas)',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                  onSaved: (value) => _ingredients = value!,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Instructions',
                  style: TextStyle(fontSize: 18),
                ),
                // Instructions Bix
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter recipe instructions',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: null,
                  onSaved: (value) => _instructions = value!,
                ),
                // Image Box
                const SizedBox(height: 16),
                const Text(
                  'Image URL',
                  style: TextStyle(fontSize: 18),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter recipe image URL',
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value) => _imageUrl = value!,
                ),
                const SizedBox(height: 16),
                // button
                ElevatedButton(
                  onPressed: () {
                    _submitForm();
                  },
                  child: const Text('Save Recipe'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print(
          'Saved Recipe:\n${_title}\n${_description}\n${_ingredients}\n${_instructions}\n${_imageUrl}');
      // TODO: Save recipe data to database or API
      Navigator.pop(context);
    }
  }
}
