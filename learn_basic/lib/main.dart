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

// import 'package:flutter/material.dart';

// // fungsi utama yang akan dipanggil pertama kali
// void main() {
//   runApp(new MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // home tampilan awal aplikasi
//       // scaffold menyediakan ada header dan bottom
//       home: Scaffold(
//         // appbar buat bar tampilan dari aplokasi
//         appBar: AppBar(
//           // buat nampilin judul app bar
//           title: Text("Aplikasi Hello World!"),
//         ),
//         // bikin konten didalam body, rata tengah
//         body: Center(
//           // konten didalam body
//           child: Container(
//               width: 150,
//               height: 100,
//               color: Colors.orange.shade700,
//               child: Text(
//                 "Aku pasti bisa jadi expert di flutter",
//                 style: TextStyle(
//                     fontSize: 20,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w700,)
//               )),
//         ),
//       ),
//     );
//   }
// }
