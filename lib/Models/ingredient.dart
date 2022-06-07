import 'package:flutter/material.dart';

class Ingredient extends StatefulWidget{

  int amount;
  String measurement;
  String name;
  String type;

  Ingredient({
    required this.name,
    this.type='',
    this.amount = 0,
    this.measurement = ''
  });

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }


}
class _IngredientState extends State<Ingredient> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}

