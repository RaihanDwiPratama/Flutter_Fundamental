import 'package:freezed_annotation/freezed_annotation.dart';

part 'id.freezed.dart';
part 'id.g.dart';

@freezed
class Id with _$Id {
  factory Id({
    required String id,
    required String title,
    required String thumbnail,
    @JsonKey(name: 'japanese_title') required String japaneseTitle,
    required String score,
    required String producer,
    required String type,
    required String status,
    required String duration,
    @JsonKey(name: 'release_date') required String releaseDate,
    required String studio,
    required String genre,
    required String synopsis,
    // required String episode,
  }) = _Id;

  factory Id.fromJson(Map<String, dynamic> json) => _$IdFromJson(json);
}
