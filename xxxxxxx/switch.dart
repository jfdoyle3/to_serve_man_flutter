import 'package:flutter/material.dart';

class Switch extends StatefulWidget {
  const Switch({super.key});

  @override
  State<Switch> createState() => _SwitchState();
}

class _SwitchState extends State<Switch> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Colors.red,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
