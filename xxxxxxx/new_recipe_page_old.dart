// import 'package:flutter/material.dart';
// import 'package:to_serve_man/src/Models/cookbook_model.dart';

// import '../Models/recipe_model.dart';

// class NewRecipePage extends StatelessWidget {
//   late BuildContext context;
//   NewRecipePage({super.key});

//   final _formKey = GlobalKey<FormState>();
//   List<RecipeModel> recipeList = [];
//   String _title = '';
//   // String _ingredients = '';

//   final textController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     print('--> Build: New Recipe Page');
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('New Recipe'),
//         actions: [
//           IconButton(
//             onPressed: () {
//               _submitForm();
//             },
//             icon: const Icon(Icons.save),
//           ),
//           IconButton(
//             onPressed: () {
//               // Cancel New Recipe -think of using back arrow to cancel new creation
//               //     clears object before created - pop up box y/n
//               // _submitForm();
//             },
//             icon: const Icon(Icons.cancel),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 //----------------------
//                 // Recipe Title
//                 //
//                 const Text(
//                   'Title',
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     hintText: 'Enter recipe title',
//                     border: OutlineInputBorder(),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter a title';
//                     }
//                     return null;
//                   },
//                   onSaved: (value) => _title = value!,
//                 ),
//                 //---------------------
//                 // Recipe Ingredients
//                 //
//                 const Text(
//                   'Ingredients',
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     hintText: 'Enter recipe ingredients',
//                     border: OutlineInputBorder(),
//                   ),
//                   // validator: (value) {
//                   //   if (value == null || value.isEmpty) {
//                   //     return 'Please enter a title';
//                   //   }
//                   //   return null;
//                   // },
//                   //(value) => _ingredients = value!
//                   // onSaved:,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   void _submitForm() {
//     // TODO: Save recipe data to database or API
//     if (_formKey.currentState!.validate()) {
//       _formKey.currentState!.save();
//       CookBookModel().addRecipe();
//     }
//   }
// }




// // Notes:
//  // Recipe newRecipe = Recipe.fromJsonString(_title);
//       // recipeList.add(newRecipe);
//       // Navigator.push(
//       //   context,
//       //   MaterialPageRoute(
//       //       builder: (context) =>),
//       // );
