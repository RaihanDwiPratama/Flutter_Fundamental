import 'package:app_notes/models/screen_arguments.dart';
import 'package:flutter/material.dart';

class ExtractArgumentScreens extends StatelessWidget {
  const ExtractArgumentScreens({super.key});

  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Text(args.content),
      ),
    );
  }
}
