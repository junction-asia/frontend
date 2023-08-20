// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'land_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Infos _$InfosFromJson(Map<String, dynamic> json) {
  return _Infos.fromJson(json);
}

/// @nodoc
mixin _$Infos {
  int get id => throw _privateConstructorUsedError;
  String get group_name => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get like_count => throw _privateConstructorUsedError;
  int get unlike_count => throw _privateConstructorUsedError;
  bool get is_like => throw _privateConstructorUsedError;
  bool get is_unlike => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfosCopyWith<Infos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfosCopyWith<$Res> {
  factory $InfosCopyWith(Infos value, $Res Function(Infos) then) =
      _$InfosCopyWithImpl<$Res, Infos>;
  @useResult
  $Res call(
      {int id,
      String group_name,
      String name,
      int like_count,
      int unlike_count,
      bool is_like,
      bool is_unlike});
}

/// @nodoc
class _$InfosCopyWithImpl<$Res, $Val extends Infos>
    implements $InfosCopyWith<$Res> {
  _$InfosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? group_name = null,
    Object? name = null,
    Object? like_count = null,
    Object? unlike_count = null,
    Object? is_like = null,
    Object? is_unlike = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      group_name: null == group_name
          ? _value.group_name
          : group_name // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      like_count: null == like_count
          ? _value.like_count
          : like_count // ignore: cast_nullable_to_non_nullable
              as int,
      unlike_count: null == unlike_count
          ? _value.unlike_count
          : unlike_count // ignore: cast_nullable_to_non_nullable
              as int,
      is_like: null == is_like
          ? _value.is_like
          : is_like // ignore: cast_nullable_to_non_nullable
              as bool,
      is_unlike: null == is_unlike
          ? _value.is_unlike
          : is_unlike // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InfosCopyWith<$Res> implements $InfosCopyWith<$Res> {
  factory _$$_InfosCopyWith(_$_Infos value, $Res Function(_$_Infos) then) =
      __$$_InfosCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String group_name,
      String name,
      int like_count,
      int unlike_count,
      bool is_like,
      bool is_unlike});
}

/// @nodoc
class __$$_InfosCopyWithImpl<$Res> extends _$InfosCopyWithImpl<$Res, _$_Infos>
    implements _$$_InfosCopyWith<$Res> {
  __$$_InfosCopyWithImpl(_$_Infos _value, $Res Function(_$_Infos) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? group_name = null,
    Object? name = null,
    Object? like_count = null,
    Object? unlike_count = null,
    Object? is_like = null,
    Object? is_unlike = null,
  }) {
    return _then(_$_Infos(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      group_name: null == group_name
          ? _value.group_name
          : group_name // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      like_count: null == like_count
          ? _value.like_count
          : like_count // ignore: cast_nullable_to_non_nullable
              as int,
      unlike_count: null == unlike_count
          ? _value.unlike_count
          : unlike_count // ignore: cast_nullable_to_non_nullable
              as int,
      is_like: null == is_like
          ? _value.is_like
          : is_like // ignore: cast_nullable_to_non_nullable
              as bool,
      is_unlike: null == is_unlike
          ? _value.is_unlike
          : is_unlike // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Infos implements _Infos {
  _$_Infos(
      {required this.id,
      required this.group_name,
      required this.name,
      required this.like_count,
      required this.unlike_count,
      required this.is_like,
      required this.is_unlike});

  factory _$_Infos.fromJson(Map<String, dynamic> json) =>
      _$$_InfosFromJson(json);

  @override
  final int id;
  @override
  final String group_name;
  @override
  final String name;
  @override
  final int like_count;
  @override
  final int unlike_count;
  @override
  final bool is_like;
  @override
  final bool is_unlike;

  @override
  String toString() {
    return 'Infos(id: $id, group_name: $group_name, name: $name, like_count: $like_count, unlike_count: $unlike_count, is_like: $is_like, is_unlike: $is_unlike)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Infos &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.group_name, group_name) ||
                other.group_name == group_name) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.like_count, like_count) ||
                other.like_count == like_count) &&
            (identical(other.unlike_count, unlike_count) ||
                other.unlike_count == unlike_count) &&
            (identical(other.is_like, is_like) || other.is_like == is_like) &&
            (identical(other.is_unlike, is_unlike) ||
                other.is_unlike == is_unlike));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, group_name, name, like_count,
      unlike_count, is_like, is_unlike);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfosCopyWith<_$_Infos> get copyWith =>
      __$$_InfosCopyWithImpl<_$_Infos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InfosToJson(
      this,
    );
  }
}

abstract class _Infos implements Infos {
  factory _Infos(
      {required final int id,
      required final String group_name,
      required final String name,
      required final int like_count,
      required final int unlike_count,
      required final bool is_like,
      required final bool is_unlike}) = _$_Infos;

  factory _Infos.fromJson(Map<String, dynamic> json) = _$_Infos.fromJson;

  @override
  int get id;
  @override
  String get group_name;
  @override
  String get name;
  @override
  int get like_count;
  @override
  int get unlike_count;
  @override
  bool get is_like;
  @override
  bool get is_unlike;
  @override
  @JsonKey(ignore: true)
  _$$_InfosCopyWith<_$_Infos> get copyWith =>
      throw _privateConstructorUsedError;
}

Comments _$CommentsFromJson(Map<String, dynamic> json) {
  return _Comments.fromJson(json);
}

/// @nodoc
mixin _$Comments {
  String get login_id => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentsCopyWith<Comments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsCopyWith<$Res> {
  factory $CommentsCopyWith(Comments value, $Res Function(Comments) then) =
      _$CommentsCopyWithImpl<$Res, Comments>;
  @useResult
  $Res call({String login_id, String comment});
}

/// @nodoc
class _$CommentsCopyWithImpl<$Res, $Val extends Comments>
    implements $CommentsCopyWith<$Res> {
  _$CommentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login_id = null,
    Object? comment = null,
  }) {
    return _then(_value.copyWith(
      login_id: null == login_id
          ? _value.login_id
          : login_id // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentsCopyWith<$Res> implements $CommentsCopyWith<$Res> {
  factory _$$_CommentsCopyWith(
          _$_Comments value, $Res Function(_$_Comments) then) =
      __$$_CommentsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login_id, String comment});
}

/// @nodoc
class __$$_CommentsCopyWithImpl<$Res>
    extends _$CommentsCopyWithImpl<$Res, _$_Comments>
    implements _$$_CommentsCopyWith<$Res> {
  __$$_CommentsCopyWithImpl(
      _$_Comments _value, $Res Function(_$_Comments) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login_id = null,
    Object? comment = null,
  }) {
    return _then(_$_Comments(
      login_id: null == login_id
          ? _value.login_id
          : login_id // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Comments implements _Comments {
  _$_Comments({required this.login_id, required this.comment});

  factory _$_Comments.fromJson(Map<String, dynamic> json) =>
      _$$_CommentsFromJson(json);

  @override
  final String login_id;
  @override
  final String comment;

  @override
  String toString() {
    return 'Comments(login_id: $login_id, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Comments &&
            (identical(other.login_id, login_id) ||
                other.login_id == login_id) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, login_id, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentsCopyWith<_$_Comments> get copyWith =>
      __$$_CommentsCopyWithImpl<_$_Comments>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentsToJson(
      this,
    );
  }
}

abstract class _Comments implements Comments {
  factory _Comments(
      {required final String login_id,
      required final String comment}) = _$_Comments;

  factory _Comments.fromJson(Map<String, dynamic> json) = _$_Comments.fromJson;

  @override
  String get login_id;
  @override
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$$_CommentsCopyWith<_$_Comments> get copyWith =>
      throw _privateConstructorUsedError;
}

Lands _$LandsFromJson(Map<String, dynamic> json) {
  return _Lands.fromJson(json);
}

/// @nodoc
mixin _$Lands {
  int get id => throw _privateConstructorUsedError;
  List<Infos> get infos => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  List<Comments> get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LandsCopyWith<Lands> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandsCopyWith<$Res> {
  factory $LandsCopyWith(Lands value, $Res Function(Lands) then) =
      _$LandsCopyWithImpl<$Res, Lands>;
  @useResult
  $Res call(
      {int id,
      List<Infos> infos,
      List<String> images,
      List<Comments> comments});
}

/// @nodoc
class _$LandsCopyWithImpl<$Res, $Val extends Lands>
    implements $LandsCopyWith<$Res> {
  _$LandsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? infos = null,
    Object? images = null,
    Object? comments = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      infos: null == infos
          ? _value.infos
          : infos // ignore: cast_nullable_to_non_nullable
              as List<Infos>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comments>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LandsCopyWith<$Res> implements $LandsCopyWith<$Res> {
  factory _$$_LandsCopyWith(_$_Lands value, $Res Function(_$_Lands) then) =
      __$$_LandsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      List<Infos> infos,
      List<String> images,
      List<Comments> comments});
}

/// @nodoc
class __$$_LandsCopyWithImpl<$Res> extends _$LandsCopyWithImpl<$Res, _$_Lands>
    implements _$$_LandsCopyWith<$Res> {
  __$$_LandsCopyWithImpl(_$_Lands _value, $Res Function(_$_Lands) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? infos = null,
    Object? images = null,
    Object? comments = null,
  }) {
    return _then(_$_Lands(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      infos: null == infos
          ? _value._infos
          : infos // ignore: cast_nullable_to_non_nullable
              as List<Infos>,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comments>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Lands implements _Lands {
  _$_Lands(
      {required this.id,
      required final List<Infos> infos,
      required final List<String> images,
      required final List<Comments> comments})
      : _infos = infos,
        _images = images,
        _comments = comments;

  factory _$_Lands.fromJson(Map<String, dynamic> json) =>
      _$$_LandsFromJson(json);

  @override
  final int id;
  final List<Infos> _infos;
  @override
  List<Infos> get infos {
    if (_infos is EqualUnmodifiableListView) return _infos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_infos);
  }

  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<Comments> _comments;
  @override
  List<Comments> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'Lands(id: $id, infos: $infos, images: $images, comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Lands &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._infos, _infos) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_infos),
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LandsCopyWith<_$_Lands> get copyWith =>
      __$$_LandsCopyWithImpl<_$_Lands>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LandsToJson(
      this,
    );
  }
}

abstract class _Lands implements Lands {
  factory _Lands(
      {required final int id,
      required final List<Infos> infos,
      required final List<String> images,
      required final List<Comments> comments}) = _$_Lands;

  factory _Lands.fromJson(Map<String, dynamic> json) = _$_Lands.fromJson;

  @override
  int get id;
  @override
  List<Infos> get infos;
  @override
  List<String> get images;
  @override
  List<Comments> get comments;
  @override
  @JsonKey(ignore: true)
  _$$_LandsCopyWith<_$_Lands> get copyWith =>
      throw _privateConstructorUsedError;
}
