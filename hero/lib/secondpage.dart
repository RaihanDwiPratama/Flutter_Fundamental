import 'package:flutter/material.dart';
import 'package:hero/thirdpage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Hero Animation",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ThirdPage();
              },
            ),
          );
        },
        child: Hero(tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 100,
              height: 100,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage("images/flowers.jpg"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
