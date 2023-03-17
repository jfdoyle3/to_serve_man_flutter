import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class AddDirectionsPage extends StatefulWidget {
  const AddDirectionsPage({super.key});

  @override
  State<AddDirectionsPage> createState() => _AddDirectionsPageState();
}

class _AddDirectionsPageState extends State<AddDirectionsPage> {
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: textController,
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Save to database');
            },
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: TextField(
        autocorrect: true,
        controller: textController,
      ),
      bottomNavigationBar: NavigationBar(destinations: const [
        NavigationDestination(
            icon: Icon(Icons.description), label: 'Description'),
        NavigationDestination(icon: Icon(Icons.blender), label: 'Ingredients'),
        NavigationDestination(
            icon: Icon(Icons.directions), label: 'Directions'),
      ]),
    );
  }
}
