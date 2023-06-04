import 'package:flutter/material.dart';
import 'package:to_serve_man/src/routes/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    print('--> Build: App');
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteManager.homePage,
      onGenerateRoute: RouteManager.generatedRoutes,
    );
  }
}
