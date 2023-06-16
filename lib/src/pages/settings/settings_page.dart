import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_serve_man/src/Models/settings_model.dart';

import '../../routes/routes.dart';
// import '../../widgets/theme_switch.dart';

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
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Card(
            child: ListTile(
              title: Text('Theme'),
            ),
          ),
          Consumer<SettingsModel>(
            builder: (context, value, child) {
              return SwitchListTile(
                title: const Text('Dark Theme'),
                value: value.darkTheme,
                onChanged: (newValue) {
                  value.toggleTheme();
                },
              );
            },
          ),
          const Card(
            child: ListTile(
              title: Text('Text'),
            ),
          ),
          Consumer<SettingsModel>(
            builder: (context, value, child) {
              return SwitchListTile(
                title: const Text('Large'),
                value: value.largeText,
                onChanged: (newValue) {
                  value.toggleTheme();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
