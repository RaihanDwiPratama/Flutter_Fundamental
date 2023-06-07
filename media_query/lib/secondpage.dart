import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query"),
      ),
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(
              children: generateContainer(),
            )
          : Row(
              children: generateContainer(),
            ),
    );
  }

  List<Widget> generateContainer() {
    return <Widget>[
      Container(
        color: Colors.tealAccent,
        width: 200,
        height: 200,
      ),
      Container(
        color: Colors.orangeAccent,
        width: 200,
        height: 200,
      ),
      Container(
        color: Colors.redAccent,
        width: 200,
        height: 200,
      ),
    ];
  }
}
