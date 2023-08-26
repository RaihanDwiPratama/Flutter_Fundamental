import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// bagian file yang dibutuhkan
// untuk membuat model menggunakan freezed
part 'user.freezed.dart';
part 'user.g.dart';

// annotasi digunakan untuk memberitahu
// bahwa class ini menggunakan freezed untuk membuat model
// bagian ini dihandle oleh user.freezed.dart
@freezed
class User with _$User {
  // constructor diawali factory saat menggunakan freezed
  const factory User({
    required int id,
    required String username,
    required String password,
  })= _User;

  // constructor fromJson digunakan
  // untuk mengambil response data berupa json
  // data yang dimuat dalam json menggunakan map
  // bagian ini di handle oleh user.g.dart 
  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
} 