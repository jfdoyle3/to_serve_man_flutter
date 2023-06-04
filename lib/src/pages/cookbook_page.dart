import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/cookbook_model.dart';

class CookBookPage extends StatelessWidget {
  const CookBookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cookbook'),
      ),
      body: Consumer<CookBookModel>(
        builder: (context, value, child) => Expanded(
          child: ListView.builder(
            itemCount: value.recipes.length,
            itemBuilder: (context, int index) {
              return Text(value.recipes[index].getTitle.toString());
            },
          ),
        ),
      ),
    );
  }
}
