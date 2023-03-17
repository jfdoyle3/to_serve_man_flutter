import 'package:flutter/material.dart';
import 'package:to_serve_man/Widgets/Recipe/add_recipe_page.dart';
import 'package:to_serve_man/Widgets/Recipe/recipe_list_page.dart';

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
              return const AddRecipePage();
            }),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
