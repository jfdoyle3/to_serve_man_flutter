import 'package:flutter/material.dart';
import 'package:to_serve_man/src/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print('Build: Home Page');
    return Scaffold(
      appBar: AppBar(
        title: const Text('User'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('To Serve Man!'),
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
