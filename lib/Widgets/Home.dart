
import 'package:flutter/material.dart';
import 'package:to_serve_man_flutter/Widgets/AddRecipe.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Cookbook - Home'),
          ),
          body: Center(child: Column(children: <Widget>[
            Container(
              margin: const EdgeInsets.all(25),
              child:  TextButton(
                onPressed: () {},
                child: Container(
                  color: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: const Text(
                    'View Recipes',
                    style: TextStyle(color: Colors.white, fontSize: 13.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(25),
              child:  TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AddRecipe()),
                  );
                },
                child: Container(
                  color: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: const Text(
                    'Add Recipe',
                    style: TextStyle(color: Colors.white, fontSize: 13.0),
                  ),
                ),
              ),
            ),
          ]
          ))
      ),
    );
  }
}