import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_serve_man/src/Models/settings_model.dart';

class TitlePage extends StatefulWidget {
  final BuildContext context;
  const TitlePage({super.key, required this.context});

  @override
  State<TitlePage> createState() => _TitlePageState();
}

class _TitlePageState extends State<TitlePage> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    //  need to remove this...
    await Future.delayed(
      const Duration(seconds: 4),
    );
    print('getting data but didn\'t waited');
    // ignore: use_build_context_synchronously
    widget.context.read<SettingsModel>().hasLoaded = true;
    print('set hasLoaded to True');
  }

  @override
  Widget build(BuildContext context) {
    print('Build: Title Page - Loads Shared Prefs.');
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/title.jpg'),
              const Text('Loading Prefs.'),
            ],
          ),
        ),
      ),
    );
  }
}
