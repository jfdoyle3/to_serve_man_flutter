import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  // Recipe cake=Recipe('cake',
  //     [Ingredient(name: 'egg',amount: 1),
  //      Ingredient(name: 'flour',amount: 4, measurement: 'cups'),],
  //     ['mix ingredient','put batter in pan']);
  //
  // print(cake.recipeName);
  //
  // for(Ingredient item in cake.ingredients) {
  //   int amount=item.amount;
  //   String ingredientName=item.name;
  //   String measurement=item.measurement;
  //   print ('$amount $measurement $ingredientName');
  // }
  //
  // for(String step in cake.steps) {
  //   print(step);
  //}
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('To Serve Man'),
        ),
      ),
    );
  }
}
