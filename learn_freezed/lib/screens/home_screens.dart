import 'package:flutter/material.dart';
import 'package:learn_freezed/model/user/user.dart';
import 'package:learn_freezed/services/api_services.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  final ApiServices _apiServices = ApiServices();
  late Future<List<User>> _userFuture;

  @override
  void initState() {
    super.initState();
    _userFuture = _apiServices.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Freezed + Dio'),
      ),
      body: FutureBuilder(
        future: _userFuture,
        builder: (context, snapshot) {
          // perbaikan yang ini
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Error loading data'));
          } else {
            final users = snapshot.data!;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(users[index].title),
                  subtitle: Text(
                    users[index].thumbnail,
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
