import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_serve_man/src/routes/route_generator.dart';

class HomePage extends StatelessWidget {
  final BuildContext context;
  const HomePage({super.key, required this.context});

  @override
  Widget build(BuildContext context) {
    print('Build: Home Page');
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('User'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).pushNamed(RouteManager.settingsPage);
            },
          ),
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              exit(0);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer(
              builder: (context, value, child) {
                return const Text(
                  'To Serve Man!',
                  style: TextStyle(fontSize: 25),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(RouteManager.cookBookPage);
                  },
                  child: const Text('Cookbook'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(RouteManager.newRecipePage);
                  },
                  child: const Text('New Recipe'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
