import 'package:flutter/material.dart';
import 'package:latihan_mengirim_arguments/data/model/arguments.dart';

// ignore: must_be_immutable
class HomeScreens extends StatefulWidget {
  String title;
  String description;

  HomeScreens({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  String _title = 'The Lord of the Rings';
  String _description =
      'The Lord of the Rings is a series of three epic fantasy adventure films directed by Peter Jackson, based on the novel The Lord of the Rings by British author J. R. R. Tolkien. The films are subtitled The Fellowship of the Ring, The Two Towers, and The Return of the King.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        title: Text('Home Screens'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () async {
          final result = await Navigator.of(context).pushNamed(
            'detail',
            arguments: Arguments(
              _title,
              _description,
            ),
          );

          if (result != null) {
            setState(() {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Content is updated!')),
              );
            });
          }
        },
        child: Icon(
          Icons.chevron_right,
          color: Colors.white,
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contoh cara mengirim arguments kedalam screen yang berbeda:',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Arguments dari halaman detail:',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Judul:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              '${_title}',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Deskripsi:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              '${_description}',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
