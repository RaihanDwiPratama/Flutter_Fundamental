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
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: users.length,
              itemBuilder: (context, index) {
                return Card(
                  shadowColor: Colors.grey.shade600,
                  elevation: 2,
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.network(
                              users[index].thumbnail,
                              height: 110.0,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            users[index].title,
                            maxLines: 2,
                            style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(users[index].episode),
                        ]),
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
