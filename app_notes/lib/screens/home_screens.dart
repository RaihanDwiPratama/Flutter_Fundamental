import 'package:app_notes/models/screen_arguments.dart';
import 'package:app_notes/screens/extract_argument_screens.dart';
import 'package:app_notes/screens/pass_screens.dart';
import 'package:flutter/material.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screens'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  ExtractArgumentScreens.routeName,
                  arguments: ScreenArguments(
                      'Extract Arguments Screens', 'Extract argument to new screen'),
                );
              },
              child: Text('Navigate to screens to extract arguments'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  PassScreens.routeName,
                  arguments: ScreenArguments(
                      'Pass Arguments Screens', 'Passing argument to new screen'),
                );
              },
              child: Text('Navigate a name arguments'),
            )
          ],
        ),
      ),
    );
  }
}
