import 'package:flutter/material.dart';

import '../../Models/recipe.dart';

const int itemCount = 20;

// ignore: must_be_immutable
class RecipeListPage extends StatefulWidget {
  final Recipe recipe;

  const RecipeListPage({super.key, required this.recipe});

  @override
  State<RecipeListPage> createState() => _RecipeListPageState();
}

class _RecipeListPageState extends State<RecipeListPage> {
  List<Recipe> recipeList = [];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Item ${(index + 1)}'),
          leading: const Icon(Icons.person),
          trailing: const Icon(Icons.select_all),
          onTap: () {
            debugPrint('Item ${(index + 1)} selected');
          },
        );
      },
    );
  }
}
