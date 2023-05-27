import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60, bottom: 17),
            child: Text(
              "Spicy and Creamy Slaw",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30, bottom: 24),
            child: Text(
              "This super-flexible, all-purpose salad turns cabbage into luscious tangles of crisp leaves generously coated in a rich and bright dressing.",
              style: TextStyle(color: Color(0xFF676767)),
              textAlign: TextAlign.center,
            ),
          ),
        ]),
      ),
    );
  }
}
