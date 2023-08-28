import 'package:dio/dio.dart';
import 'package:learn_freezed/model/user/user.dart';

class ApiServices {
  final Dio _dio = Dio();

  Future<List<User>> getUser() async {
    try {
      final response = await _dio
          .get('https://otakudesu-api-soqdlzbrnq-as.a.run.app/api/home');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['data']['ongoing'];
        final List<User> users =
            data.map((userJson) => User.fromJson(userJson)).toList();
        return users;
      } else {
        throw Exception('Failed to load data');
    
      }
    } catch (e, s) {
      print(e.toString());
      print('stacktrace' + s.toString());
      throw Exception('Failed to connect to the server');
    }
  }
}
