import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  factory Address({
    required String address_name,
    required String region_1depth_name,
    required String region_2depth_name,
    required String region_3depth_name,
    required String mountain_yn,
    required String main_address_no,
    required String sub_address_no,
  }) = _Address;
  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@freezed
class TotalAddress with _$TotalAddress {
  factory TotalAddress({
    required RoadAddress? road_address,
    required Address? address,
  }) = _TotalAddress;
  factory TotalAddress.fromJson(Map<String, dynamic> json) =>
      _$TotalAddressFromJson(json);
}

@freezed
class RoadAddress with _$RoadAddress {
  factory RoadAddress({
    required String address_name,
    required String region_1depth_name,
    required String region_2depth_name,
    required String region_3depth_name,
    required String road_name,
    required String underground_yn,
    required String main_building_no,
    required String sub_building_no,
    required String build_name,
    required String zone_no,
  }) = _RoadAddress;
  factory RoadAddress.fromJson(Map<String, dynamic> json) =>
      _$RoadAddressFromJson(json);
}

@freezed
class Document with _$Document {
  factory Document({
    required List<TotalAddress>? address,
  }) = _Document;
  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);
}

@freezed
class Meta with _$Meta {
  factory Meta({
    required int total_count,
  }) = _Meta;
  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class KakaoAddress with _$KakaoAddress {
  factory KakaoAddress({
    required Meta meta,
    required Document documents,
  }) = _KakaoAddress;
  factory KakaoAddress.fromJson(Map<String, dynamic> json) =>
      _$KakaoAddressFromJson(json);
}
