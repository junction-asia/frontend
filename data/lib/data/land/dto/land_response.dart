import 'package:freezed_annotation/freezed_annotation.dart';

part 'land_response.freezed.dart';
part 'land_response.g.dart';

@freezed
class Infos with _$Infos {
  factory Infos({
    required int id,
    required String group_name,
    required String name,
    required int like_count,
    required int unlike_count,
    required bool is_like,
    required bool is_unlike,
  }) = _Infos;
  factory Infos.fromJson(Map<String, dynamic> json) => _$InfosFromJson(json);
}
// class Infos with _$Infos {
//   factory Infos({
//     required int id,
//     required String group_name,
//     required String name,
//     required int like_count,
//     required int unlike_count,
//     required bool is_like,
//     required bool is_unlike,
//   }) = _Infos;
//   factory Infos.fromJson(Map<String, dynamic> json) => _$InfosFromJson(json);
// }

@freezed
class Comments with _$Comments {
  factory Comments({
    required String login_id,
    required String comment,
  }) = _Comments;
  factory Comments.fromJson(Map<String, dynamic> json) =>
      _$CommentsFromJson(json);
}

@freezed
class Lands with _$Lands {
  factory Lands({
    required int id,
    required List<Infos> infos,
    required List<String> images,
    required List<Comments> comments,
  }) = _Lands;
  factory Lands.fromJson(Map<String, dynamic> json) => _$LandsFromJson(json);
}
