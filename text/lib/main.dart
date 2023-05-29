import 'package:flutter/material.dart';

// fungsi utama yang akan dipanggil pertama kali
void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Second screen"),
          centerTitle: true,
        ),
        body: (Container(
          child: RichText(
              text: TextSpan(
                  text: "Welcome\n",
                  style: TextStyle(color: Colors.black),
                  children: [
                TextSpan(
                  text: "John Doe",
                  style: TextStyle(
                      fontWeight: FontWeight.w900, color: Colors.black),
                ),
              ])),
        )),
      ),
    );
  }
}