import 'package:flutter/material.dart';

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
          title: Text("Inkwell/Custom Button"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Elevated Button Example",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 40,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Elevated Button"),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: Colors.indigo,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
