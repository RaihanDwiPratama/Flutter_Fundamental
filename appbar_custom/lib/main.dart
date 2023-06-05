import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Transform.rotate(
              angle: 45 * math.pi / 90,
              child: Icon(Icons.equalizer, color: Color(0xff0C0D0E))),
          title: Text("Profile"),
          centerTitle: true,
          bottomOpacity: 0.0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.account_circle, color: Color(0xff0C0D0E)))
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0XFF3C48F2),
                    Color(0XFFB1B6FA),
                  ],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomLeft),
            ),
          ),
        ),
      ),
    );
  }
}
