import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _number = 10;

  void increaseNumber() {
    setState(() {
      _number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      _number--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful widget"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    //<-- SEE HERE
                    width: 40,
                    height: 40,
                    child: FittedBox(
                      //<-- SEE HERE
                      child: FloatingActionButton(
                        //<-- SEE HERE
                        backgroundColor: Colors.amberAccent,
                        onPressed: () {
                          decreaseNumber();
                        },
                        child: Icon(
                          Icons.remove,
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      _number.toString(),
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    //<-- SEE HERE
                    width: 40,
                    height: 40,
                    child: FittedBox(
                      //<-- SEE HERE
                      child: FloatingActionButton(
                        //<-- SEE HERE
                        backgroundColor: Colors.amberAccent,
                        onPressed: () {
                          increaseNumber();
                        },
                        child: Icon(
                          Icons.add,
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text("Kamu memesan sebanyak ${_number} item")
            ],
          ),
        ),
      ),
    );
  }
}
