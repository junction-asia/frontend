// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'land_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Infos _$$_InfosFromJson(Map<String, dynamic> json) => _$_Infos(
      id: json['id'] as int,
      group_name: json['group_name'] as String,
      name: json['name'] as String,
      like_count: json['like_count'] as int,
      unlike_count: json['unlike_count'] as int,
      is_like: json['is_like'] as bool,
      is_unlike: json['is_unlike'] as bool,
    );

Map<String, dynamic> _$$_InfosToJson(_$_Infos instance) => <String, dynamic>{
      'id': instance.id,
      'group_name': instance.group_name,
      'name': instance.name,
      'like_count': instance.like_count,
      'unlike_count': instance.unlike_count,
      'is_like': instance.is_like,
      'is_unlike': instance.is_unlike,
    };

_$_Comments _$$_CommentsFromJson(Map<String, dynamic> json) => _$_Comments(
      login_id: json['login_id'] as String,
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$$_CommentsToJson(_$_Comments instance) =>
    <String, dynamic>{
      'login_id': instance.login_id,
      'comment': instance.comment,
    };

_$_Lands _$$_LandsFromJson(Map<String, dynamic> json) => _$_Lands(
      id: json['id'] as int,
      infos: (json['infos'] as List<dynamic>)
          .map((e) => Infos.fromJson(e as Map<String, dynamic>))
          .toList(),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      comments: (json['comments'] as List<dynamic>)
          .map((e) => Comments.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LandsToJson(_$_Lands instance) => <String, dynamic>{
      'id': instance.id,
      'infos': instance.infos,
      'images': instance.images,
      'comments': instance.comments,
    };
