import 'package:flutter/material.dart';

class ViewRecipePage extends StatefulWidget {
  const ViewRecipePage({super.key});

  @override
  State<ViewRecipePage> createState() => _ViewRecipePageState();
}

class _ViewRecipePageState extends State<ViewRecipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Recipe'),
      ),
      body: const Text('Body'),
      // bottomNavigationBar: NavigationBar(
      //   destinations: const [
      //     NavigationDestination(
      //         icon: Icon(Icons.description), label: 'Description'),
      //     NavigationDestination(
      //         icon: Icon(Icons.blender), label: 'Ingredients'),
      //     NavigationDestination(
      //         icon: Icon(Icons.directions), label: 'Directions'),
      //   ],
      //   onDestinationSelected: (int index) {
      //     setState(() {
      //       currentPage = index;
      //     });
      //   },
      //),
    );
  }
}
