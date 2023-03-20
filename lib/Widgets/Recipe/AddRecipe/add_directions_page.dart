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
        title: const Text('Directions'),
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
    );
  }
}
