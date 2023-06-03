import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stack and Align"),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.lightBlue.shade100),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.green.shade50),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.green.shade50),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.lightBlue.shade100),
                      ),
                    ],
                  ),
                )
              ],
            ),
            ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Cool! What's more, the price of accommodation, food and drinks is cheaper!"),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Cool! What's more, the price of accommodation, food and drinks is cheaper!"),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Cool! What's more, the price of accommodation, food and drinks is cheaper!"),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Cool! What's more, the price of accommodation, food and drinks is cheaper!"),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Cool! What's more, the price of accommodation, food and drinks is cheaper!"),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Cool! What's more, the price of accommodation, food and drinks is cheaper!"),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Cool! What's more, the price of accommodation, food and drinks is cheaper!"),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Cool! What's more, the price of accommodation, food and drinks is cheaper!"),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Cool! What's more, the price of accommodation, food and drinks is cheaper!"),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Cool! What's more, the price of accommodation, food and drinks is cheaper!"),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Cool! What's more, the price of accommodation, food and drinks is cheaper!"),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Cool! What's more, the price of accommodation, food and drinks is cheaper!"),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Cool! What's more, the price of accommodation, food and drinks is cheaper!"),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Cool! What's more, the price of accommodation, food and drinks is cheaper!"),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Cool! What's more, the price of accommodation, food and drinks is cheaper!"),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Cool! What's more, the price of accommodation, food and drinks is cheaper!"),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Cool! What's more, the price of accommodation, food and drinks is cheaper!"),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment(0, 0.75),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
