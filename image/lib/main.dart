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
          title: Text("Image Widget"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Contoh penggunaan Image Widget menggunakan gambar dari internet",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                color: Colors.tealAccent,
                width: 200,
                height: 200,
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.all(3),
                child: Image(
                  image: NetworkImage(
                      "https://dce0qyjkutl4h.cloudfront.net/wp-content/uploads/2020/10/flutter-app-developer.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Contoh penggunaan Image Widget menggunakan gambar dari perangkat local",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                color: Colors.tealAccent,
                width: 200,
                height: 200,
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.all(3),
                child: Image(
                  image: AssetImage("images/img.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
