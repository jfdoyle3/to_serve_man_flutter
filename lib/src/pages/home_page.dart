import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_serve_man/src/routes/routes.dart';

import '../Models/settings_model.dart';

class HomePage extends StatefulWidget {
  final BuildContext context;
  const HomePage({super.key, required this.context});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    // await Future.delayed(
    //   const Duration(seconds: 4),
    // );
    // ignore: use_build_context_synchronously
    widget.context.read<SettingsModel>().hasLoaded = true;
  }

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
