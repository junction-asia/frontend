// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'land_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

land _$landFromJson(Map<String, dynamic> json) {
  return _land.fromJson(json);
}

/// @nodoc
mixin _$land {
  String get name => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $landCopyWith<land> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $landCopyWith<$Res> {
  factory $landCopyWith(land value, $Res Function(land) then) =
      _$landCopyWithImpl<$Res, land>;
  @useResult
  $Res call({String name, String latitude, String longitude});
}

/// @nodoc
class _$landCopyWithImpl<$Res, $Val extends land>
    implements $landCopyWith<$Res> {
  _$landCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_landCopyWith<$Res> implements $landCopyWith<$Res> {
  factory _$$_landCopyWith(_$_land value, $Res Function(_$_land) then) =
      __$$_landCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String latitude, String longitude});
}

/// @nodoc
class __$$_landCopyWithImpl<$Res> extends _$landCopyWithImpl<$Res, _$_land>
    implements _$$_landCopyWith<$Res> {
  __$$_landCopyWithImpl(_$_land _value, $Res Function(_$_land) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_land(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_land implements _land {
  _$_land(
      {required this.name, required this.latitude, required this.longitude});

  factory _$_land.fromJson(Map<String, dynamic> json) => _$$_landFromJson(json);

  @override
  final String name;
  @override
  final String latitude;
  @override
  final String longitude;

  @override
  String toString() {
    return 'land(name: $name, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_land &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_landCopyWith<_$_land> get copyWith =>
      __$$_landCopyWithImpl<_$_land>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_landToJson(
      this,
    );
  }
}

abstract class _land implements land {
  factory _land(
      {required final String name,
      required final String latitude,
      required final String longitude}) = _$_land;

  factory _land.fromJson(Map<String, dynamic> json) = _$_land.fromJson;

  @override
  String get name;
  @override
  String get latitude;
  @override
  String get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_landCopyWith<_$_land> get copyWith => throw _privateConstructorUsedError;
}
