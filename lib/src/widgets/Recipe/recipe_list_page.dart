import 'package:flutter/material.dart';
import '../../Models/recipe.dart';

// Static Cookbook List
Recipe staticRecipe = Recipe('Static Recipe', 'egg,flour');
Recipe staticRecipe1 = Recipe('Static Recipe1', 'flour, cheese');
Recipe staticRecipe2 = Recipe('Static Recipe2', 'milk,sugar');
Recipe staticRecipe3 = Recipe('Static Recipe3', 'tomatoes, olive oil');
Recipe staticRecipe4 = Recipe('Static Recipe4', 'soy sauce, olive oil');
List<Recipe> listRecipes = [
  staticRecipe,
  staticRecipe1,
  staticRecipe2,
  staticRecipe3,
  staticRecipe4
];

// void loadStaticData() {
//   listRecipes.add(staticRecipe);
//   listRecipes.add(staticRecipe1);
//   listRecipes.add(staticRecipe2);
//   listRecipes.add(staticRecipe3);
//   listRecipes.add(staticRecipe4);
// }

int listCount = listRecipes.length;

class RecipeListPage extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const RecipeListPage({super.key});

  @override
  State<RecipeListPage> createState() => _RecipeListPageState();
}

class _RecipeListPageState extends State<RecipeListPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listCount,
      itemBuilder: (BuildContext context, int index) {
        Recipe? recipe;
        return ListTile(
          // ignore: dead_code
          title: recipe?.getTitle != null
              // ignore: dead_code
              ? Text('${recipe?.getTitle}')
              : const Text('No recipes'),
          leading: const Icon(Icons.restaurant),
          // trailing: const Icon(Icons.select_all),
          onTap: () {
            // State: Recipe
            //Navigate to View Recipe Page
            debugPrint('${listRecipes[index].getIngredients} selected');
          },
        );
      },
    );
  }
}
