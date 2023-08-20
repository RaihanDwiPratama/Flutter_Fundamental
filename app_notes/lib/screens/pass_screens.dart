import 'package:flutter/material.dart';

class PassScreens extends StatelessWidget {
  static const routeName = '/passArgument';

  final String title;
  final String content;

  const PassScreens({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(content),
      ),
    );
  }
}
