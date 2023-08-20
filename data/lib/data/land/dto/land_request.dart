import 'package:freezed_annotation/freezed_annotation.dart';
part 'land_request.freezed.dart';
part 'land_request.g.dart';

@freezed
class land with _$land {
  factory land({
    required String name,
    required String latitude,
    required String longitude,
  }) = _land;
  factory land.fromJson(Map<String, dynamic> json) => _$landFromJson(json);
}
