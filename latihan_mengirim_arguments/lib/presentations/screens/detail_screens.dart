import 'package:flutter/material.dart';
import 'package:latihan_mengirim_arguments/data/model/arguments.dart';

class DetailScreens extends StatelessWidget {
  final Arguments arguments;

  const DetailScreens({
    super.key,
    required this.arguments,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        title: Text('Detail Screens'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          Navigator.of(context).pop('data yang dikirim kembali');
        },
        child: Icon(
          Icons.save,
          color: Colors.white,
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Judul buku: ${arguments.title}'),
            Text('Deskripsi buku: ${arguments.description}'),
          ],
        ),
      ),
    );
  }
}
