import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/settings_model.dart';

class ThemeSwitch extends StatefulWidget {
  const ThemeSwitch({super.key});

  @override
  State<ThemeSwitch> createState() => _ThemeSwitchState();
}

class _ThemeSwitchState extends State<ThemeSwitch> {
  bool light = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Colors.blueGrey,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
          if (light) {
            context.read<SettingsModel>().appBarTheme = ThemeData.dark();
          } else {
            context.read<SettingsModel>().appBarTheme = ThemeData.light();
          }
        });
      },
    );
  }
}
