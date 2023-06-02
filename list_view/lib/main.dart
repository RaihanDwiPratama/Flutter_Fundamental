import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  child: Text("Tambah data"),
                  onPressed: () {
                    setState(() {
                      widgets.add(Text("Data ke-" + counter.toString(),
                          style: TextStyle(fontSize: 25)));
                      counter++;
                    });
                  },
                ),
                ElevatedButton(
                  child: Text("Hapus data"),
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                      counter--;
                    });
                  },
                ),
              ],
            ),
            Column(
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}
