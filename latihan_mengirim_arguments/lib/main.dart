import 'package:flutter/material.dart';
import 'package:latihan_mengirim_arguments/data/model/arguments.dart';
import 'package:latihan_mengirim_arguments/presentations/screens/detail_screens.dart';
import 'package:latihan_mengirim_arguments/presentations/screens/home_screens.dart';

void main() {
  runApp(const Initial());
}

class Initial extends StatelessWidget {
  const Initial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreens(
              title: 'Lord of the rings',
              description: 'Film adventure',
            ),
        'detail': (context) => DetailScreens(
            arguments: Arguments('Mendapatkan arguments', 'data...')),
      },
    );
  }
}
