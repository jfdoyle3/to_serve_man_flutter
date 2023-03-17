import 'package:flutter/material.dart';
import 'package:to_serve_man/Widgets/recipe_page.dart';

const int itemCount = 20;

class RecipeListPage extends StatelessWidget {
  const RecipeListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Item ${(index + 1)}'),
          leading: const Icon(Icons.person),
          trailing: const Icon(Icons.select_all),
          onTap: () {
            debugPrint('Item ${(index + 1)} selected');
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) {
                return const RecipePage();
              }),
            );
          },
          onLongPress: () {
            debugPrint('Delete');
          },
        );
      },
    );
  }
}
