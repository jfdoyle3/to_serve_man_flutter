import 'package:flutter/material.dart';

import './ingredient.dart';

class _Recipe extends StatefulWidget {
  late final String _recipeName;
  late final List _ingredients;
  late final List _steps;
  

  _Recipe(this._recipeName, this._ingredients, this._steps, {Key? key})
      : super(key: key);

  List get ingredients => _ingredients;

  set ingredients(List value) {
    _ingredients = value;
  }

  String get recipeName => _recipeName;

  set recipeName(String value) {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
    _recipeName = recipeName;

  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class RecipeState extends State<_Recipe> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(backgroundColor: Colors.blue,
            title: const Text('Recipe')),
        body: Column(
          children: [
            Container(
              child: Row(
                
              ),
            ),
          ],
        )
    );
  }
}
