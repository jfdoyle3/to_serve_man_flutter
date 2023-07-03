import 'package:flutter/material.dart';
import '../../models/cookbook_model.dart';
import '../../models/recipe_model.dart';
import '../../routes/route_generator.dart';

class NewRecipePage extends StatefulWidget {
  const NewRecipePage({Key? key}) : super(key: key);

  @override
  _NewRecipePageState createState() => _NewRecipePageState();
}

class _NewRecipePageState extends State<NewRecipePage> {
  TextEditingController newRecipeController = TextEditingController();

  @override
  void dispose() {
    newRecipeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('Build: New Recipe Page');
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Title'),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).pushNamed(RouteManager.homePage);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: newRecipeController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Please enter the title'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                CookBookModel().addRecipe(RecipeModel('static pie'));
                Navigator.of(context).pushNamed(RouteManager.homePage);
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
