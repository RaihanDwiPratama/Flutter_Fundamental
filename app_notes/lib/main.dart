import 'package:app_notes/models/screen_arguments.dart';
import 'package:app_notes/screens/home_screens.dart';
import 'package:app_notes/screens/pass_screens.dart';
import 'package:flutter/material.dart';
import 'package:app_notes/screens/extract_argument_screens.dart';
//import 'package:app_notes/screens/first_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        ExtractArgumentScreens.routeName: (context) =>
            const ExtractArgumentScreens(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == PassScreens.routeName) {
          final args = settings.arguments as ScreenArguments;

          return MaterialPageRoute(
            builder: (context) {
              return PassScreens(
                title: args.title,
                content: args.content,
              );
            },
          );
        }
        assert(false, 'Need to implement ${settings.name}');
        return null;
      },
      title: 'Navigation with arguments',
      home: HomeScreens(),
      // home: FirstScreens(),
      // theme: ThemeData(useMaterial3: true),
    );
  }
}
