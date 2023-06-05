import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_serve_man/src/Models/cookbook_model.dart';
import 'package:to_serve_man/src/routes/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    print('--> Build: App and provider');
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CookBookModel(),
        ),
      ],
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: RouteManager.homePage,
          onGenerateRoute: RouteManager.generatedRoutes,
        );
      },
    );
  }
}
