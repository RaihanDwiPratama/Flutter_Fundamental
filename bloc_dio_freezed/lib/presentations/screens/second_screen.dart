import 'package:bloc_dio_freezed/domain/services/api_services.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String id;
  const SecondScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    // final ApiServices _apiServices = ApiServices();
    // final Id _getAnimeDetail;

    return Scaffold(
        appBar: AppBar(title: const Text('Second Screen')),
        body: FutureBuilder(
            future: ApiServices().getById(id),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return const Text("Cannot load server");
              } else {
                final anime = snapshot.data!;
                return Column(
                  children: [Text(anime.id)],
                );
              }
            }));
  }
}
