import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Spacer widget"),
        ),
        body: Center(
          child: Row(
            children: [
              Container(
                width: 80,
                height: 80,
                color: Colors.teal,
              ),
              // untuk memberi nilai pada spacer, tambahkan attribut flex
              Spacer(flex: 1,),
              Container(
                width: 80,
                height: 80,
                color: Colors.orange,
              ),
              Spacer(),
              Container(
                width: 80,
                height: 80,
                color: Colors.red.shade300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
