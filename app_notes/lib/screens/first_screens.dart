import 'package:app_notes/screens/second_screens.dart';
import 'package:flutter/material.dart';

import '../models/notes.dart';

class FirstScreens extends StatefulWidget {
  const FirstScreens({super.key});

  @override
  State<FirstScreens> createState() => _FirstScreensState();
}

class _FirstScreensState extends State<FirstScreens> {
  List<Notes> notes = [];
  bool _isListView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal,
        title: Text('Notes'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SecondScreens()));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Container(child: _buildNote()),
    );
  }

  Widget _buildNote() {
    if (notes.isEmpty) {
      return SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Center(child: Text('Make your first note')),
      );
    } else {
      return Container(
        child: _isListView
            ? ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  final note = notes[index];
                  Container(
                    color: Colors.amber,
                  );
                },
              )
            : GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                ),
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  final note = notes[index];
                  Container();
                },
              ),
      );
    }
  }
}

