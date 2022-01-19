// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nearby_places.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NearbyPlaces _$NearbyPlacesFromJson(Map<String, dynamic> json) {
  return _NearbyPlaces.fromJson(json);
}

/// @nodoc
class _$NearbyPlacesTearOff {
  const _$NearbyPlacesTearOff();

  _NearbyPlaces call(
      {List<Place> places = const <Place>[],
      @JsonKey(toJson: searchParamsToJson) required SearchParams searchParams,
      DateTime? lastUpdated}) {
    return _NearbyPlaces(
      places: places,
      searchParams: searchParams,
      lastUpdated: lastUpdated,
    );
  }

  NearbyPlaces fromJson(Map<String, Object?> json) {
    return NearbyPlaces.fromJson(json);
  }
}

/// @nodoc
const $NearbyPlaces = _$NearbyPlacesTearOff();

/// @nodoc
mixin _$NearbyPlaces {
  List<Place> get places => throw _privateConstructorUsedError;
  @JsonKey(toJson: searchParamsToJson)
  SearchParams get searchParams => throw _privateConstructorUsedError;
  DateTime? get lastUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NearbyPlacesCopyWith<NearbyPlaces> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearbyPlacesCopyWith<$Res> {
  factory $NearbyPlacesCopyWith(
          NearbyPlaces value, $Res Function(NearbyPlaces) then) =
      _$NearbyPlacesCopyWithImpl<$Res>;
  $Res call(
      {List<Place> places,
      @JsonKey(toJson: searchParamsToJson) SearchParams searchParams,
      DateTime? lastUpdated});

  $SearchParamsCopyWith<$Res> get searchParams;
}

/// @nodoc
class _$NearbyPlacesCopyWithImpl<$Res> implements $NearbyPlacesCopyWith<$Res> {
  _$NearbyPlacesCopyWithImpl(this._value, this._then);

  final NearbyPlaces _value;
  // ignore: unused_field
  final $Res Function(NearbyPlaces) _then;

  @override
  $Res call({
    Object? places = freezed,
    Object? searchParams = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      places: places == freezed
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
      searchParams: searchParams == freezed
          ? _value.searchParams
          : searchParams // ignore: cast_nullable_to_non_nullable
              as SearchParams,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $SearchParamsCopyWith<$Res> get searchParams {
    return $SearchParamsCopyWith<$Res>(_value.searchParams, (value) {
      return _then(_value.copyWith(searchParams: value));
    });
  }
}

/// @nodoc
abstract class _$NearbyPlacesCopyWith<$Res>
    implements $NearbyPlacesCopyWith<$Res> {
  factory _$NearbyPlacesCopyWith(
          _NearbyPlaces value, $Res Function(_NearbyPlaces) then) =
      __$NearbyPlacesCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Place> places,
      @JsonKey(toJson: searchParamsToJson) SearchParams searchParams,
      DateTime? lastUpdated});

  @override
  $SearchParamsCopyWith<$Res> get searchParams;
}

/// @nodoc
class __$NearbyPlacesCopyWithImpl<$Res> extends _$NearbyPlacesCopyWithImpl<$Res>
    implements _$NearbyPlacesCopyWith<$Res> {
  __$NearbyPlacesCopyWithImpl(
      _NearbyPlaces _value, $Res Function(_NearbyPlaces) _then)
      : super(_value, (v) => _then(v as _NearbyPlaces));

  @override
  _NearbyPlaces get _value => super._value as _NearbyPlaces;

  @override
  $Res call({
    Object? places = freezed,
    Object? searchParams = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_NearbyPlaces(
      places: places == freezed
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
      searchParams: searchParams == freezed
          ? _value.searchParams
          : searchParams // ignore: cast_nullable_to_non_nullable
              as SearchParams,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NearbyPlaces implements _NearbyPlaces {
  const _$_NearbyPlaces(
      {this.places = const <Place>[],
      @JsonKey(toJson: searchParamsToJson) required this.searchParams,
      this.lastUpdated});

  factory _$_NearbyPlaces.fromJson(Map<String, dynamic> json) =>
      _$$_NearbyPlacesFromJson(json);

  @JsonKey()
  @override
  final List<Place> places;
  @override
  @JsonKey(toJson: searchParamsToJson)
  final SearchParams searchParams;
  @override
  final DateTime? lastUpdated;

  @override
  String toString() {
    return 'NearbyPlaces(places: $places, searchParams: $searchParams, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NearbyPlaces &&
            const DeepCollectionEquality().equals(other.places, places) &&
            const DeepCollectionEquality()
                .equals(other.searchParams, searchParams) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(places),
      const DeepCollectionEquality().hash(searchParams),
      const DeepCollectionEquality().hash(lastUpdated));

  @JsonKey(ignore: true)
  @override
  _$NearbyPlacesCopyWith<_NearbyPlaces> get copyWith =>
      __$NearbyPlacesCopyWithImpl<_NearbyPlaces>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NearbyPlacesToJson(this);
  }
}

abstract class _NearbyPlaces implements NearbyPlaces {
  const factory _NearbyPlaces(
      {List<Place> places,
      @JsonKey(toJson: searchParamsToJson) required SearchParams searchParams,
      DateTime? lastUpdated}) = _$_NearbyPlaces;

  factory _NearbyPlaces.fromJson(Map<String, dynamic> json) =
      _$_NearbyPlaces.fromJson;

  @override
  List<Place> get places;
  @override
  @JsonKey(toJson: searchParamsToJson)
  SearchParams get searchParams;
  @override
  DateTime? get lastUpdated;
  @override
  @JsonKey(ignore: true)
  _$NearbyPlacesCopyWith<_NearbyPlaces> get copyWith =>
      throw _privateConstructorUsedError;
}
