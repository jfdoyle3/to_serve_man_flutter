import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_serve_man/src/Models/cookbook_model.dart';
import './src/app.dart';

main() => runApp(
      // Use ChangeNotifierProvider for Single provider.
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => CookbookModel()),
          //  Provider(create: (context)=> SomeOtherClass()),
        ],
        child: const App(),
      ),
    );
