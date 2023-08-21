import 'package:flutter/material.dart';
import 'package:latihan_mengirim_arguments/data/model/arguments.dart';

class DetailScreens extends StatelessWidget {
  const DetailScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final Arguments args =
        ModalRoute.of(context)!.settings.arguments as Arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screens'),
      ),
      body: Container(
        child: Column(
          children: [
            Text('Judul buku: ${args.title}'),
            Text('Deskripsi buku: ${args.description}'),
          ],
        ),
      ),
    );
  }
}
