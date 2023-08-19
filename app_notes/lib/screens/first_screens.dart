import 'package:app_notes/screens/second_screens.dart';
import 'package:flutter/material.dart';

class FirstScreens extends StatefulWidget {
  const FirstScreens({super.key});

  @override
  State<FirstScreens> createState() => _FirstScreensState();
}

class _FirstScreensState extends State<FirstScreens> {
  bool _isBlank = true;

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
      body: Container(
        child: _isBlank
            ? SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Center(child: Text('Make your first note')))
            : Container(
                color: Colors.amber,
                height: MediaQuery.of(context).size.height,
              ),
      ),
    );
  }
}
