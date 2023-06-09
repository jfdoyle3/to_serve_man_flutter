import 'package:flutter/material.dart';

import '../../routes/routes.dart';
import '../../widgets/theme_switch.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    print('Build: Settings Page');
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Settings'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              // Save Settings
            },
          ),
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).pushNamed(RouteManager.homePage);
            },
          ),
        ],
      ),
      body: const Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // Theme text should reflect the switch - light or dark
            children: [
              Text('Theme (Dark or Light)'),
              ThemeSwitch(),
            ],
          ),
        ],
      ),
    );
  }
}
