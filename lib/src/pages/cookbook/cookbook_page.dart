import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Models/cookbook_model.dart';
import '../../routes/routes.dart';

class CookBookPage extends StatelessWidget {
  const CookBookPage({super.key});

  @override
  Widget build(BuildContext context) {
    print('Build: CookBook Page');
    print('Cookbook Lenth: ${CookBookModel().recipes.length}');
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Cookbook'),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).pushNamed(RouteManager.homePage);
            },
          ),
        ],
      ),
      body: Consumer<CookBookModel>(
        builder: (context, value, child) {
          return Text('Cookbook Lenth: ${value.recipes.length}');
        },
      ),
    );
  }
}
