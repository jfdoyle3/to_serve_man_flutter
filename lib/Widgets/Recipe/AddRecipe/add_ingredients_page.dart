import 'package:flutter/material.dart';

class AddIngredientsPage extends StatefulWidget {
  const AddIngredientsPage({super.key});

  @override
  State<AddIngredientsPage> createState() => _AddIngredientsPageState();
}

class _AddIngredientsPageState extends State<AddIngredientsPage> {
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
          IconButton(
            onPressed: () {
              debugPrint(
                  '''Cancel New Recipe -think of using back arrow to cancel new creation
                  clears object before created - pop up box y/n''');
            },
            icon: const Icon(Icons.cancel),
          ),
        ],
      ),
      body: TextField(
        autocorrect: true,
        controller: textController,
      ),
    );
  }
}
