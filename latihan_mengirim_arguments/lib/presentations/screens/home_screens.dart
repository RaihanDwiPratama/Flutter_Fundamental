// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:latihan_mengirim_arguments/data/model/arguments.dart';

// ignore: must_be_immutable
class HomeScreens extends StatelessWidget {
  String title;
  String description;

  HomeScreens({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screens'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(
            'detail',
            arguments: Arguments(
              'The Lord of the Rings',
              'The Lord of the Rings is a series of three epic fantasy adventure films directed by Peter Jackson, based on the novel The Lord of the Rings by British author J. R. R. Tolkien. The films are subtitled The Fellowship of the Ring, The Two Towers, and The Return of the King.',
            ),
          );
        },
        child: Icon(Icons.chevron_right),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contoh cara mengirim arguments kedalam screen yang berbeda',
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
          ],
        ),
      ),
    );
  }
}
