
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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