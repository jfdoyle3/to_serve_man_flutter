import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_serve_man/src/models/cookbook_model.dart';
import 'package:to_serve_man/src/models/settings_model.dart';
import 'package:to_serve_man/src/routes/route_generator.dart';

import '../pages/title_page.dart';

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
        ChangeNotifierProvider(
          create: (context) => SettingsModel(),
        ),
      ],
      child: Consumer<SettingsModel>(
        builder: (context, value, child) {
          return value.hasLoaded
              ? MaterialApp(
                  theme: value.darkTheme ? darkTheme : lightTheme,
                  debugShowCheckedModeBanner: false,
                  initialRoute: RouteManager.homePage,
                  onGenerateRoute: RouteManager.generatedRoutes,
                )
              : TitlePage(
                  context: context,
                );
        },
      ),
    );
  }
}
