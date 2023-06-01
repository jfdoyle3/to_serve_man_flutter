import 'package:flutter/material.dart';
import 'package:to_serve_man/src/widgets/cookbook.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    print('--> Build: Home');
    return const Row(
      children: [Cookbook()],
    );
  }
}
