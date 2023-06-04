import 'package:flutter/material.dart';

class CookBookPage extends StatelessWidget {
  const CookBookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cookbook'),
      ),
      body: const Text('CookBook Page'),
    );
  }
}
