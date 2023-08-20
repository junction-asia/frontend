// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      address_name: json['address_name'] as String,
      region_1depth_name: json['region_1depth_name'] as String,
      region_2depth_name: json['region_2depth_name'] as String,
      region_3depth_name: json['region_3depth_name'] as String,
      mountain_yn: json['mountain_yn'] as String,
      main_address_no: json['main_address_no'] as String,
      sub_address_no: json['sub_address_no'] as String,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'address_name': instance.address_name,
      'region_1depth_name': instance.region_1depth_name,
      'region_2depth_name': instance.region_2depth_name,
      'region_3depth_name': instance.region_3depth_name,
      'mountain_yn': instance.mountain_yn,
      'main_address_no': instance.main_address_no,
      'sub_address_no': instance.sub_address_no,
    };

_$_TotalAddress _$$_TotalAddressFromJson(Map<String, dynamic> json) =>
    _$_TotalAddress(
      road_address: json['road_address'] == null
          ? null
          : RoadAddress.fromJson(json['road_address'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TotalAddressToJson(_$_TotalAddress instance) =>
    <String, dynamic>{
      'road_address': instance.road_address,
      'address': instance.address,
    };

_$_RoadAddress _$$_RoadAddressFromJson(Map<String, dynamic> json) =>
    _$_RoadAddress(
      address_name: json['address_name'] as String,
      region_1depth_name: json['region_1depth_name'] as String,
      region_2depth_name: json['region_2depth_name'] as String,
      region_3depth_name: json['region_3depth_name'] as String,
      road_name: json['road_name'] as String,
      underground_yn: json['underground_yn'] as String,
      main_building_no: json['main_building_no'] as String,
      sub_building_no: json['sub_building_no'] as String,
      build_name: json['build_name'] as String,
      zone_no: json['zone_no'] as String,
    );

Map<String, dynamic> _$$_RoadAddressToJson(_$_RoadAddress instance) =>
    <String, dynamic>{
      'address_name': instance.address_name,
      'region_1depth_name': instance.region_1depth_name,
      'region_2depth_name': instance.region_2depth_name,
      'region_3depth_name': instance.region_3depth_name,
      'road_name': instance.road_name,
      'underground_yn': instance.underground_yn,
      'main_building_no': instance.main_building_no,
      'sub_building_no': instance.sub_building_no,
      'build_name': instance.build_name,
      'zone_no': instance.zone_no,
    };

_$_Document _$$_DocumentFromJson(Map<String, dynamic> json) => _$_Document(
      address: (json['address'] as List<dynamic>?)
          ?.map((e) => TotalAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DocumentToJson(_$_Document instance) =>
    <String, dynamic>{
      'address': instance.address,
    };

_$_Meta _$$_MetaFromJson(Map<String, dynamic> json) => _$_Meta(
      total_count: json['total_count'] as int,
    );

Map<String, dynamic> _$$_MetaToJson(_$_Meta instance) => <String, dynamic>{
      'total_count': instance.total_count,
    };

_$_KakaoAddress _$$_KakaoAddressFromJson(Map<String, dynamic> json) =>
    _$_KakaoAddress(
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      documents: Document.fromJson(json['documents'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_KakaoAddressToJson(_$_KakaoAddress instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'documents': instance.documents,
    };
