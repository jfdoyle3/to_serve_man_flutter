import 'package:flutter/material.dart';
import '../Models/recipe.dart';
import 'Recipe/new_recipe_page.dart';
import 'Recipe/recipe_list_page.dart';

class Cookbook extends StatelessWidget {
  const Cookbook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  String username = 'User';

  // ignore: prefer_typing_uninitialized_variables

  List<Recipe> recipeList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$username\'s CookBook'),
      ),
      body: const RecipeListPage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) {
              return NewRecipePage();
            }),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
