import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_serve_man/src/Models/settings_model.dart';

class LoadingPage extends StatefulWidget {
  final BuildContext context;
  const LoadingPage({super.key, required this.context});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    await Future.delayed(
      const Duration(seconds: 4),
    );
    print('waited');
    // ignore: use_build_context_synchronously
    widget.context.read<SettingsModel>().hasLoaded = true;
    print('set to True');
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Loading Prefs.'),
            ],
          ),
        ),
      ),
    );
  }
}
