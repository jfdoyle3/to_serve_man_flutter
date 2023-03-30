import 'package:flutter/material.dart';
import 'add_directions_page.dart';
import 'add_ingredients_page.dart';

class AddDescriptionPage extends StatefulWidget {
  const AddDescriptionPage({super.key});

  @override
  State<AddDescriptionPage> createState() => _AddDescriptionPageState();
}

class _AddDescriptionPageState extends State<AddDescriptionPage> {
  int currentPage = 0;
  List<Widget> pages = const [AddIngredientsPage(), AddDirectionsPage()];
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Description'),
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
                  '''Cancel New Description -think of using back arrow to cancel new creation
                  clears object before created - pop up box y/n''');
            },
            icon: const Icon(Icons.cancel),
          ),
        ],
      ),
      // body: pages[currentPage],
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
      //   selectedIndex: currentPage,
      // ),
    );
  }
}
