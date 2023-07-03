import 'package:flutter/material.dart';
import 'package:to_serve_man/src/models/recipe_model.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //  User user = User('Jim', 'Doyle', 55);
    RecipeModel recipe = RecipeModel('pie', 'apples');
    //recipe page
    return Scaffold(
      appBar: AppBar(
        title: const Text('Routing App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter first name',
              ),
            ),
            ElevatedButton(
              child: const Text('Go to second'),
              onPressed: () {
                // Pushed Named Route with Args
                Navigator.of(context).pushNamed(
                  '/second',
                  arguments: recipe,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
