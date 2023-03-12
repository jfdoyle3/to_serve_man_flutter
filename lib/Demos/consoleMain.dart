//
//
// import 'Models/cookbook.dart';
// import 'Models/ingredient.dart';
// import 'Models/recipe.dart';
//
// void main() {
//   List<Recipe> cookbook = [];
//
//   Recipe cake = Recipe('Chocolate Cake', [
//     const Ingredient('egg', 'large',1,'-'),
//     const Ingredient('flour', 'AP', 1,'cups'),
//   ], [
//     'mix ingredients',
//     'put batter in pan'
//   ]);
//
//   displayRecipe(cake);
//
//
//     print('');
//   print('CookBook');
//
//   CookBook myCookBook=CookBook.addRecipe([cake]);
//   print(myCookBook.cookbook[0].recipeName);
//   print(myCookBook.cookbook[0].ingredients[0].type);
//   print(myCookBook.cookbook[0].steps[1]);
//   // for(Recipe item in myCookBook.cookbook){
//   //   print(item.recipeName);
//   // }
// }
//
// void displayRecipe(Recipe recipe) {
//   int stepNumber = 0;
//   print('Recipe:');
//   print(recipe.recipeName);
//   for (Ingredient item in recipe.ingredients) {
//     String ingredientName = item.name;
//     String measurement = item.measurement;
//     int amount = item.amount;
//     print('$amount $measurement $ingredientName');
//   }
//   print('----------------------');
//   print('Steps:');
//   for (String step in recipe.steps) {
//     stepNumber++;
//     print('$stepNumber. $step');
//   }
// }
