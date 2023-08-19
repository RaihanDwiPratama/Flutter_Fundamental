import 'package:flutter/material.dart';

class SecondScreens extends StatefulWidget {
  const SecondScreens({super.key});

  @override
  State<SecondScreens> createState() => _SecondScreensState();
}

class _SecondScreensState extends State<SecondScreens> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        title: Text('Create Note'),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 45,
            height: 45,
            child: FloatingActionButton(
              heroTag: 'pick_color',
              onPressed: () {},
              backgroundColor: Colors.teal,
              child: Icon(
                Icons.color_lens,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 20),
          FloatingActionButton(
            heroTag: 'save',
            onPressed: () {},
            backgroundColor: Colors.teal,
            child: Icon(
              Icons.save,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Title',
                hintStyle: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                ),
              ),
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Write something here...',
              ),
            )
          ],
        ),
      ),
    );
  }
}
