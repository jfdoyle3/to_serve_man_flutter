import 'package:flutter/material.dart';
import 'add_directions_page.dart';
import 'add_ingredients_page.dart';

class NewRecipePage extends StatefulWidget {
  const NewRecipePage({super.key});

  @override
  State<NewRecipePage> createState() => _NewRecipePageState();
}

class _NewRecipePageState extends State<NewRecipePage> {
  final _formKey = GlobalKey<FormState>();

  int currentPage = 0;
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
              debugPrint(
                  '''Cancel New Recipe -think of using back arrow to cancel new creation
                  clears object before created - pop up box y/n''');
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
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('Saved Recipe:\n${_title}');
      // TODO: Save recipe data to database or API
      Navigator.pop(context);
    }
  }
}
