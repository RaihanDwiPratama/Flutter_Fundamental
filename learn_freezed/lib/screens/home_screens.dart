import 'package:flutter/material.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Freezed'),
      ),
      body: const Column(
        children: [Text('Some data....'), ],
      ),
    );
  }
}
