import 'package:flutter/material.dart';

// fungsi utama yang akan dipanggil pertama kali
void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home tampilan awal aplikasi
      // scaffold menyediakan ada header dan bottom
      home: Scaffold(
        // appbar buat bar tampilan dari aplokasi
        appBar: AppBar(
          // buat nampilin judul app bar
          title: Text("Aplikasi Hello World!"),
        ),
        // bikin konten didalam body, rata tengah
        body: Center(
          // konten didalam body
          child: Text("Hello World!"),
        ),
      ),
    );
  }
}