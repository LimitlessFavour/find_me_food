// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceFilter _$PlaceFilterFromJson(Map<String, dynamic> json) {
  return _PlaceFilter.fromJson(json);
}

/// @nodoc
class _$PlaceFilterTearOff {
  const _$PlaceFilterTearOff();

  _PlaceFilter call(
      {@JsonKey(name: 'lat_lng', toJson: locationToJson)
          required LatLng? latLng,
      @JsonKey(name: 'place_type')
          required PlaceType placeType,
      double radius = 20000}) {
    return _PlaceFilter(
      latLng: latLng,
      placeType: placeType,
      radius: radius,
    );
  }

  PlaceFilter fromJson(Map<String, Object?> json) {
    return PlaceFilter.fromJson(json);
  }
}

/// @nodoc
const $PlaceFilter = _$PlaceFilterTearOff();

/// @nodoc
mixin _$PlaceFilter {
  @JsonKey(name: 'lat_lng', toJson: locationToJson)
  LatLng? get latLng => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_type')
  PlaceType get placeType => throw _privateConstructorUsedError;
  double get radius => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceFilterCopyWith<PlaceFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceFilterCopyWith<$Res> {
  factory $PlaceFilterCopyWith(
          PlaceFilter value, $Res Function(PlaceFilter) then) =
      _$PlaceFilterCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'lat_lng', toJson: locationToJson) LatLng? latLng,
      @JsonKey(name: 'place_type') PlaceType placeType,
      double radius});

  $LatLngCopyWith<$Res>? get latLng;
}

/// @nodoc
class _$PlaceFilterCopyWithImpl<$Res> implements $PlaceFilterCopyWith<$Res> {
  _$PlaceFilterCopyWithImpl(this._value, this._then);

  final PlaceFilter _value;
  // ignore: unused_field
  final $Res Function(PlaceFilter) _then;

  @override
  $Res call({
    Object? latLng = freezed,
    Object? placeType = freezed,
    Object? radius = freezed,
  }) {
    return _then(_value.copyWith(
      latLng: latLng == freezed
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      placeType: placeType == freezed
          ? _value.placeType
          : placeType // ignore: cast_nullable_to_non_nullable
              as PlaceType,
      radius: radius == freezed
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $LatLngCopyWith<$Res>? get latLng {
    if (_value.latLng == null) {
      return null;
    }

    return $LatLngCopyWith<$Res>(_value.latLng!, (value) {
      return _then(_value.copyWith(latLng: value));
    });
  }
}

/// @nodoc
abstract class _$PlaceFilterCopyWith<$Res>
    implements $PlaceFilterCopyWith<$Res> {
  factory _$PlaceFilterCopyWith(
          _PlaceFilter value, $Res Function(_PlaceFilter) then) =
      __$PlaceFilterCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'lat_lng', toJson: locationToJson) LatLng? latLng,
      @JsonKey(name: 'place_type') PlaceType placeType,
      double radius});

  @override
  $LatLngCopyWith<$Res>? get latLng;
}

/// @nodoc
class __$PlaceFilterCopyWithImpl<$Res> extends _$PlaceFilterCopyWithImpl<$Res>
    implements _$PlaceFilterCopyWith<$Res> {
  __$PlaceFilterCopyWithImpl(
      _PlaceFilter _value, $Res Function(_PlaceFilter) _then)
      : super(_value, (v) => _then(v as _PlaceFilter));

  @override
  _PlaceFilter get _value => super._value as _PlaceFilter;

  @override
  $Res call({
    Object? latLng = freezed,
    Object? placeType = freezed,
    Object? radius = freezed,
  }) {
    return _then(_PlaceFilter(
      latLng: latLng == freezed
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      placeType: placeType == freezed
          ? _value.placeType
          : placeType // ignore: cast_nullable_to_non_nullable
              as PlaceType,
      radius: radius == freezed
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceFilter implements _PlaceFilter {
  const _$_PlaceFilter(
      {@JsonKey(name: 'lat_lng', toJson: locationToJson) required this.latLng,
      @JsonKey(name: 'place_type') required this.placeType,
      this.radius = 20000});

  factory _$_PlaceFilter.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceFilterFromJson(json);

  @override
  @JsonKey(name: 'lat_lng', toJson: locationToJson)
  final LatLng? latLng;
  @override
  @JsonKey(name: 'place_type')
  final PlaceType placeType;
  @JsonKey()
  @override
  final double radius;

  @override
  String toString() {
    return 'PlaceFilter(latLng: $latLng, placeType: $placeType, radius: $radius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceFilter &&
            const DeepCollectionEquality().equals(other.latLng, latLng) &&
            const DeepCollectionEquality().equals(other.placeType, placeType) &&
            const DeepCollectionEquality().equals(other.radius, radius));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latLng),
      const DeepCollectionEquality().hash(placeType),
      const DeepCollectionEquality().hash(radius));

  @JsonKey(ignore: true)
  @override
  _$PlaceFilterCopyWith<_PlaceFilter> get copyWith =>
      __$PlaceFilterCopyWithImpl<_PlaceFilter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceFilterToJson(this);
  }
}

abstract class _PlaceFilter implements PlaceFilter {
  const factory _PlaceFilter(
      {@JsonKey(name: 'lat_lng', toJson: locationToJson)
          required LatLng? latLng,
      @JsonKey(name: 'place_type')
          required PlaceType placeType,
      double radius}) = _$_PlaceFilter;

  factory _PlaceFilter.fromJson(Map<String, dynamic> json) =
      _$_PlaceFilter.fromJson;

  @override
  @JsonKey(name: 'lat_lng', toJson: locationToJson)
  LatLng? get latLng;
  @override
  @JsonKey(name: 'place_type')
  PlaceType get placeType;
  @override
  double get radius;
  @override
  @JsonKey(ignore: true)
  _$PlaceFilterCopyWith<_PlaceFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

LatLng _$LatLngFromJson(Map<String, dynamic> json) {
  return _LatLng.fromJson(json);
}

/// @nodoc
class _$LatLngTearOff {
  const _$LatLngTearOff();

  _LatLng call(
      {@JsonKey(name: 'lat') required double latitude,
      @JsonKey(name: 'lng') required double longitude}) {
    return _LatLng(
      latitude: latitude,
      longitude: longitude,
    );
  }

  LatLng fromJson(Map<String, Object?> json) {
    return LatLng.fromJson(json);
  }
}

/// @nodoc
const $LatLng = _$LatLngTearOff();

/// @nodoc
mixin _$LatLng {
  @JsonKey(name: 'lat')
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'lng')
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatLngCopyWith<LatLng> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatLngCopyWith<$Res> {
  factory $LatLngCopyWith(LatLng value, $Res Function(LatLng) then) =
      _$LatLngCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'lat') double latitude,
      @JsonKey(name: 'lng') double longitude});
}

/// @nodoc
class _$LatLngCopyWithImpl<$Res> implements $LatLngCopyWith<$Res> {
  _$LatLngCopyWithImpl(this._value, this._then);

  final LatLng _value;
  // ignore: unused_field
  final $Res Function(LatLng) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$LatLngCopyWith<$Res> implements $LatLngCopyWith<$Res> {
  factory _$LatLngCopyWith(_LatLng value, $Res Function(_LatLng) then) =
      __$LatLngCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'lat') double latitude,
      @JsonKey(name: 'lng') double longitude});
}

/// @nodoc
class __$LatLngCopyWithImpl<$Res> extends _$LatLngCopyWithImpl<$Res>
    implements _$LatLngCopyWith<$Res> {
  __$LatLngCopyWithImpl(_LatLng _value, $Res Function(_LatLng) _then)
      : super(_value, (v) => _then(v as _LatLng));

  @override
  _LatLng get _value => super._value as _LatLng;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_LatLng(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LatLng implements _LatLng {
  _$_LatLng(
      {@JsonKey(name: 'lat') required this.latitude,
      @JsonKey(name: 'lng') required this.longitude});

  factory _$_LatLng.fromJson(Map<String, dynamic> json) =>
      _$$_LatLngFromJson(json);

  @override
  @JsonKey(name: 'lat')
  final double latitude;
  @override
  @JsonKey(name: 'lng')
  final double longitude;

  @override
  String toString() {
    return 'LatLng(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LatLng &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude));

  @JsonKey(ignore: true)
  @override
  _$LatLngCopyWith<_LatLng> get copyWith =>
      __$LatLngCopyWithImpl<_LatLng>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LatLngToJson(this);
  }
}

abstract class _LatLng implements LatLng {
  factory _LatLng(
      {@JsonKey(name: 'lat') required double latitude,
      @JsonKey(name: 'lng') required double longitude}) = _$_LatLng;

  factory _LatLng.fromJson(Map<String, dynamic> json) = _$_LatLng.fromJson;

  @override
  @JsonKey(name: 'lat')
  double get latitude;
  @override
  @JsonKey(name: 'lng')
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$LatLngCopyWith<_LatLng> get copyWith => throw _privateConstructorUsedError;
}
