import 'package:bloc_dio_freezed/data/models/user.dart';
import 'package:bloc_dio_freezed/domain/services/api_services.dart';
import 'package:bloc_dio_freezed/presentations/screens/second_screen.dart';
import 'package:flutter/material.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  final ApiServices _apiServices = ApiServices();
  late Future<List<User>> _usersFuture;

  @override
  void initState() {
    super.initState();
    _usersFuture = _apiServices
        .getOngoings(); // nilai argument class user, sama dengan dari API
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Freezed + Dio + BLoC'),
      ),
      body: FutureBuilder(
        future: _usersFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return const Text('Check your network');
          } else {
            final users = snapshot.data!;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10),
              itemCount: users.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return SecondScreen(id: users[index].id,);
                    }));
                  },
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.network(users[index].thumbnail),
                        Text(users[index].title)
                      ],
                    ),
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
