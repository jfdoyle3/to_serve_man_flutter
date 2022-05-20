import 'package:flutter/material.dart';
import 'Models/ingredient.dart';
import 'Models/recipe.dart';


void main() {
  // runApp(MyApp());
 Recipe cake = Recipe('Chocolate Cake', [
    Ingredient(name: 'egg', amount: 1),
    Ingredient(name: 'flour', amount: 4, measurement: 'cups'),
  ], [
    'mix ingredients',
    'put batter in pan'
  ]);

  displayRecipe(cake);

  Recipe pie = Recipe('Apple Pie', [
    Ingredient(name: 'apple', amount: 10),
    Ingredient(name: 'flour', amount: 5, measurement: 'cups'),
    Ingredient(name: 'egg', amount: 1)
  ], [
    'mix ingredients',
    'put apples and batter in pie plate'
  ]);

  print('');
  print('CookBook');

  CookBook myCookBook=CookBook.addRecipe([pie,cake]);
  for(Recipe item in myCookBook.cookbook){
    print(item.recipeName);
  }
}

void displayRecipe(Recipe recipe) {
  int stepNumber = 0;
  print('Recipe:');
  print(recipe.recipeName);
  for (Ingredient item in recipe.ingredients) {
    int amount = item.amount;
    String ingredientName = item.name;
    String measurement = item.measurement;
    print('$amount $measurement $ingredientName');
  }
  print('----------------------');
  print('Steps:');
  for (String step in recipe.steps) {
    stepNumber++;
    print('$stepNumber. $step');
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  Recipe cake=Recipe('cake',
      [Ingredient(name: 'egg',amount: 1),
       Ingredient(name: 'flour',amount: 4, measurement: 'cups'),],
      ['mix ingredient','put batter in pan']);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('To Serve Man'),
        ),
        body: Column(
         children: [
           const Text(
             'Recipe Name:',
           style: TextStyle(fontSize:  26)
           ),
           Text(
             cake.recipeName,
             style: TextStyle(fontSize: 25),
           ),

         ],
        ),
      ),
    );
  }
}
