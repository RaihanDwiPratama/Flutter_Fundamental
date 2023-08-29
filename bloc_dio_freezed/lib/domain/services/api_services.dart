import 'package:bloc_dio_freezed/data/models/get_id/id.dart';
import 'package:bloc_dio_freezed/data/models/user.dart';
import 'package:bloc_dio_freezed/domain/services/urls.dart';
import 'package:bloc_dio_freezed/utils/url.dart';
import 'package:dio/dio.dart';

class ApiServices {
  final Dio _dio = Dio();

  Future<List<User>> getOngoings() async {
    try {
      final response = await _dio.get("$baseUrl${ServiceUrl.getOngoings}");

      if (response.statusCode == 200) {
        // dapetin respons dari API
        final List<dynamic> data = response.data['data']['ongoing'];
        // convert kedalam argument yang dibutuhin class User
        final List<User> users =
            data.map((userJson) => User.fromJson(userJson)).toList();
        return users;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Id> getById(String id) async {
    try {
      final response = await _dio.get("$baseUrl${ServiceUrl.getById}/$id");

      if (response.statusCode == 200) {
        // dapetin respons dari API
        final dynamic data = response.data['data'];
        // convert kedalam argument yang dibutuhin class User
        return Id.fromJson(data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
