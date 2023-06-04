import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Models/cookbook_model.dart';
import '../Models/recipe_model.dart';
import '../routes/routes.dart';

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
    print('Building New Recipe Page');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
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
                context.read<RecipeModel>().title = newRecipeController.text;
                CookBookModel().addRecipe();
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
