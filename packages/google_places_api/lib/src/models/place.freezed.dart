// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NearbyPlacesResults _$NearbyPlacesResultsFromJson(Map<String, dynamic> json) {
  return _NearbyPlacesResults.fromJson(json);
}

/// @nodoc
class _$NearbyPlacesResultsTearOff {
  const _$NearbyPlacesResultsTearOff();

  _NearbyPlacesResults call(
      {String status = '',
      @JsonKey(name: 'next_page_token') String? nextPageToken,
      @JsonKey(name: 'results') List<Place> places = const []}) {
    return _NearbyPlacesResults(
      status: status,
      nextPageToken: nextPageToken,
      places: places,
    );
  }

  NearbyPlacesResults fromJson(Map<String, Object> json) {
    return NearbyPlacesResults.fromJson(json);
  }
}

/// @nodoc
const $NearbyPlacesResults = _$NearbyPlacesResultsTearOff();

/// @nodoc
mixin _$NearbyPlacesResults {
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page_token')
  String? get nextPageToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<Place> get places => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NearbyPlacesResultsCopyWith<NearbyPlacesResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearbyPlacesResultsCopyWith<$Res> {
  factory $NearbyPlacesResultsCopyWith(
          NearbyPlacesResults value, $Res Function(NearbyPlacesResults) then) =
      _$NearbyPlacesResultsCopyWithImpl<$Res>;
  $Res call(
      {String status,
      @JsonKey(name: 'next_page_token') String? nextPageToken,
      @JsonKey(name: 'results') List<Place> places});
}

/// @nodoc
class _$NearbyPlacesResultsCopyWithImpl<$Res>
    implements $NearbyPlacesResultsCopyWith<$Res> {
  _$NearbyPlacesResultsCopyWithImpl(this._value, this._then);

  final NearbyPlacesResults _value;
  // ignore: unused_field
  final $Res Function(NearbyPlacesResults) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? nextPageToken = freezed,
    Object? places = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      nextPageToken: nextPageToken == freezed
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String?,
      places: places == freezed
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ));
  }
}

/// @nodoc
abstract class _$NearbyPlacesResultsCopyWith<$Res>
    implements $NearbyPlacesResultsCopyWith<$Res> {
  factory _$NearbyPlacesResultsCopyWith(_NearbyPlacesResults value,
          $Res Function(_NearbyPlacesResults) then) =
      __$NearbyPlacesResultsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      @JsonKey(name: 'next_page_token') String? nextPageToken,
      @JsonKey(name: 'results') List<Place> places});
}

/// @nodoc
class __$NearbyPlacesResultsCopyWithImpl<$Res>
    extends _$NearbyPlacesResultsCopyWithImpl<$Res>
    implements _$NearbyPlacesResultsCopyWith<$Res> {
  __$NearbyPlacesResultsCopyWithImpl(
      _NearbyPlacesResults _value, $Res Function(_NearbyPlacesResults) _then)
      : super(_value, (v) => _then(v as _NearbyPlacesResults));

  @override
  _NearbyPlacesResults get _value => super._value as _NearbyPlacesResults;

  @override
  $Res call({
    Object? status = freezed,
    Object? nextPageToken = freezed,
    Object? places = freezed,
  }) {
    return _then(_NearbyPlacesResults(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      nextPageToken: nextPageToken == freezed
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String?,
      places: places == freezed
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NearbyPlacesResults implements _NearbyPlacesResults {
  _$_NearbyPlacesResults(
      {this.status = '',
      @JsonKey(name: 'next_page_token') this.nextPageToken,
      @JsonKey(name: 'results') this.places = const []});

  factory _$_NearbyPlacesResults.fromJson(Map<String, dynamic> json) =>
      _$_$_NearbyPlacesResultsFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String status;
  @override
  @JsonKey(name: 'next_page_token')
  final String? nextPageToken;
  @override
  @JsonKey(name: 'results')
  final List<Place> places;

  @override
  String toString() {
    return 'NearbyPlacesResults(status: $status, nextPageToken: $nextPageToken, places: $places)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NearbyPlacesResults &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.nextPageToken, nextPageToken) ||
                const DeepCollectionEquality()
                    .equals(other.nextPageToken, nextPageToken)) &&
            (identical(other.places, places) ||
                const DeepCollectionEquality().equals(other.places, places)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(nextPageToken) ^
      const DeepCollectionEquality().hash(places);

  @JsonKey(ignore: true)
  @override
  _$NearbyPlacesResultsCopyWith<_NearbyPlacesResults> get copyWith =>
      __$NearbyPlacesResultsCopyWithImpl<_NearbyPlacesResults>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NearbyPlacesResultsToJson(this);
  }
}

abstract class _NearbyPlacesResults implements NearbyPlacesResults {
  factory _NearbyPlacesResults(
      {String status,
      @JsonKey(name: 'next_page_token') String? nextPageToken,
      @JsonKey(name: 'results') List<Place> places}) = _$_NearbyPlacesResults;

  factory _NearbyPlacesResults.fromJson(Map<String, dynamic> json) =
      _$_NearbyPlacesResults.fromJson;

  @override
  String get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'next_page_token')
  String? get nextPageToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'results')
  List<Place> get places => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NearbyPlacesResultsCopyWith<_NearbyPlacesResults> get copyWith =>
      throw _privateConstructorUsedError;
}

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return _Place.fromJson(json);
}

/// @nodoc
class _$PlaceTearOff {
  const _$PlaceTearOff();

  _Place call(
      {String name = '',
      @JsonKey(name: 'opening_hours') OpeningHours? openingHours,
      @JsonKey(name: 'geometry') Geometry? geometry,
      @JsonKey(name: 'photos') List<Photos> photos = const [],
      @JsonKey(name: 'place_id') String? placeId,
      @JsonKey(name: 'rating') dynamic rating = 0,
      List<String> types = const [],
      @JsonKey(name: 'user_ratings_total') dynamic userRatingsTotal = 0,
      @JsonKey(name: 'vicinity') String? vicinity}) {
    return _Place(
      name: name,
      openingHours: openingHours,
      geometry: geometry,
      photos: photos,
      placeId: placeId,
      rating: rating,
      types: types,
      userRatingsTotal: userRatingsTotal,
      vicinity: vicinity,
    );
  }

  Place fromJson(Map<String, Object> json) {
    return Place.fromJson(json);
  }
}

/// @nodoc
const $Place = _$PlaceTearOff();

/// @nodoc
mixin _$Place {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'opening_hours')
  OpeningHours? get openingHours => throw _privateConstructorUsedError;
  @JsonKey(name: 'geometry')
  Geometry? get geometry => throw _privateConstructorUsedError;
  @JsonKey(name: 'photos')
  List<Photos> get photos => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  String? get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  dynamic get rating => throw _privateConstructorUsedError;
  List<String> get types => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_ratings_total')
  dynamic get userRatingsTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'vicinity')
  String? get vicinity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res>;
  $Res call(
      {String name,
      @JsonKey(name: 'opening_hours') OpeningHours? openingHours,
      @JsonKey(name: 'geometry') Geometry? geometry,
      @JsonKey(name: 'photos') List<Photos> photos,
      @JsonKey(name: 'place_id') String? placeId,
      @JsonKey(name: 'rating') dynamic rating,
      List<String> types,
      @JsonKey(name: 'user_ratings_total') dynamic userRatingsTotal,
      @JsonKey(name: 'vicinity') String? vicinity});

  $OpeningHoursCopyWith<$Res>? get openingHours;
  $GeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res> implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  final Place _value;
  // ignore: unused_field
  final $Res Function(Place) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? openingHours = freezed,
    Object? geometry = freezed,
    Object? photos = freezed,
    Object? placeId = freezed,
    Object? rating = freezed,
    Object? types = freezed,
    Object? userRatingsTotal = freezed,
    Object? vicinity = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      openingHours: openingHours == freezed
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as OpeningHours?,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photos>,
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userRatingsTotal: userRatingsTotal == freezed
          ? _value.userRatingsTotal
          : userRatingsTotal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      vicinity: vicinity == freezed
          ? _value.vicinity
          : vicinity // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $OpeningHoursCopyWith<$Res>? get openingHours {
    if (_value.openingHours == null) {
      return null;
    }

    return $OpeningHoursCopyWith<$Res>(_value.openingHours!, (value) {
      return _then(_value.copyWith(openingHours: value));
    });
  }

  @override
  $GeometryCopyWith<$Res>? get geometry {
    if (_value.geometry == null) {
      return null;
    }

    return $GeometryCopyWith<$Res>(_value.geometry!, (value) {
      return _then(_value.copyWith(geometry: value));
    });
  }
}

/// @nodoc
abstract class _$PlaceCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$PlaceCopyWith(_Place value, $Res Function(_Place) then) =
      __$PlaceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      @JsonKey(name: 'opening_hours') OpeningHours? openingHours,
      @JsonKey(name: 'geometry') Geometry? geometry,
      @JsonKey(name: 'photos') List<Photos> photos,
      @JsonKey(name: 'place_id') String? placeId,
      @JsonKey(name: 'rating') dynamic rating,
      List<String> types,
      @JsonKey(name: 'user_ratings_total') dynamic userRatingsTotal,
      @JsonKey(name: 'vicinity') String? vicinity});

  @override
  $OpeningHoursCopyWith<$Res>? get openingHours;
  @override
  $GeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class __$PlaceCopyWithImpl<$Res> extends _$PlaceCopyWithImpl<$Res>
    implements _$PlaceCopyWith<$Res> {
  __$PlaceCopyWithImpl(_Place _value, $Res Function(_Place) _then)
      : super(_value, (v) => _then(v as _Place));

  @override
  _Place get _value => super._value as _Place;

  @override
  $Res call({
    Object? name = freezed,
    Object? openingHours = freezed,
    Object? geometry = freezed,
    Object? photos = freezed,
    Object? placeId = freezed,
    Object? rating = freezed,
    Object? types = freezed,
    Object? userRatingsTotal = freezed,
    Object? vicinity = freezed,
  }) {
    return _then(_Place(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      openingHours: openingHours == freezed
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as OpeningHours?,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photos>,
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userRatingsTotal: userRatingsTotal == freezed
          ? _value.userRatingsTotal
          : userRatingsTotal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      vicinity: vicinity == freezed
          ? _value.vicinity
          : vicinity // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Place implements _Place {
  _$_Place(
      {this.name = '',
      @JsonKey(name: 'opening_hours') this.openingHours,
      @JsonKey(name: 'geometry') this.geometry,
      @JsonKey(name: 'photos') this.photos = const [],
      @JsonKey(name: 'place_id') this.placeId,
      @JsonKey(name: 'rating') this.rating = 0,
      this.types = const [],
      @JsonKey(name: 'user_ratings_total') this.userRatingsTotal = 0,
      @JsonKey(name: 'vicinity') this.vicinity});

  factory _$_Place.fromJson(Map<String, dynamic> json) =>
      _$_$_PlaceFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String name;
  @override
  @JsonKey(name: 'opening_hours')
  final OpeningHours? openingHours;
  @override
  @JsonKey(name: 'geometry')
  final Geometry? geometry;
  @override
  @JsonKey(name: 'photos')
  final List<Photos> photos;
  @override
  @JsonKey(name: 'place_id')
  final String? placeId;
  @override
  @JsonKey(name: 'rating')
  final dynamic rating;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> types;
  @override
  @JsonKey(name: 'user_ratings_total')
  final dynamic userRatingsTotal;
  @override
  @JsonKey(name: 'vicinity')
  final String? vicinity;

  @override
  String toString() {
    return 'Place(name: $name, openingHours: $openingHours, geometry: $geometry, photos: $photos, placeId: $placeId, rating: $rating, types: $types, userRatingsTotal: $userRatingsTotal, vicinity: $vicinity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Place &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.openingHours, openingHours) ||
                const DeepCollectionEquality()
                    .equals(other.openingHours, openingHours)) &&
            (identical(other.geometry, geometry) ||
                const DeepCollectionEquality()
                    .equals(other.geometry, geometry)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)) &&
            (identical(other.placeId, placeId) ||
                const DeepCollectionEquality()
                    .equals(other.placeId, placeId)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.types, types) ||
                const DeepCollectionEquality().equals(other.types, types)) &&
            (identical(other.userRatingsTotal, userRatingsTotal) ||
                const DeepCollectionEquality()
                    .equals(other.userRatingsTotal, userRatingsTotal)) &&
            (identical(other.vicinity, vicinity) ||
                const DeepCollectionEquality()
                    .equals(other.vicinity, vicinity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(openingHours) ^
      const DeepCollectionEquality().hash(geometry) ^
      const DeepCollectionEquality().hash(photos) ^
      const DeepCollectionEquality().hash(placeId) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(types) ^
      const DeepCollectionEquality().hash(userRatingsTotal) ^
      const DeepCollectionEquality().hash(vicinity);

  @JsonKey(ignore: true)
  @override
  _$PlaceCopyWith<_Place> get copyWith =>
      __$PlaceCopyWithImpl<_Place>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlaceToJson(this);
  }
}

abstract class _Place implements Place {
  factory _Place(
      {String name,
      @JsonKey(name: 'opening_hours') OpeningHours? openingHours,
      @JsonKey(name: 'geometry') Geometry? geometry,
      @JsonKey(name: 'photos') List<Photos> photos,
      @JsonKey(name: 'place_id') String? placeId,
      @JsonKey(name: 'rating') dynamic rating,
      List<String> types,
      @JsonKey(name: 'user_ratings_total') dynamic userRatingsTotal,
      @JsonKey(name: 'vicinity') String? vicinity}) = _$_Place;

  factory _Place.fromJson(Map<String, dynamic> json) = _$_Place.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'opening_hours')
  OpeningHours? get openingHours => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'geometry')
  Geometry? get geometry => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'photos')
  List<Photos> get photos => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'place_id')
  String? get placeId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'rating')
  dynamic get rating => throw _privateConstructorUsedError;
  @override
  List<String> get types => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_ratings_total')
  dynamic get userRatingsTotal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vicinity')
  String? get vicinity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlaceCopyWith<_Place> get copyWith => throw _privateConstructorUsedError;
}

OpeningHours _$OpeningHoursFromJson(Map<String, dynamic> json) {
  return _OpeningHours.fromJson(json);
}

/// @nodoc
class _$OpeningHoursTearOff {
  const _$OpeningHoursTearOff();

  _OpeningHours call({@JsonKey(name: 'open_now') bool openNow = false}) {
    return _OpeningHours(
      openNow: openNow,
    );
  }

  OpeningHours fromJson(Map<String, Object> json) {
    return OpeningHours.fromJson(json);
  }
}

/// @nodoc
const $OpeningHours = _$OpeningHoursTearOff();

/// @nodoc
mixin _$OpeningHours {
  @JsonKey(name: 'open_now')
  bool get openNow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpeningHoursCopyWith<OpeningHours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpeningHoursCopyWith<$Res> {
  factory $OpeningHoursCopyWith(
          OpeningHours value, $Res Function(OpeningHours) then) =
      _$OpeningHoursCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'open_now') bool openNow});
}

/// @nodoc
class _$OpeningHoursCopyWithImpl<$Res> implements $OpeningHoursCopyWith<$Res> {
  _$OpeningHoursCopyWithImpl(this._value, this._then);

  final OpeningHours _value;
  // ignore: unused_field
  final $Res Function(OpeningHours) _then;

  @override
  $Res call({
    Object? openNow = freezed,
  }) {
    return _then(_value.copyWith(
      openNow: openNow == freezed
          ? _value.openNow
          : openNow // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$OpeningHoursCopyWith<$Res>
    implements $OpeningHoursCopyWith<$Res> {
  factory _$OpeningHoursCopyWith(
          _OpeningHours value, $Res Function(_OpeningHours) then) =
      __$OpeningHoursCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'open_now') bool openNow});
}

/// @nodoc
class __$OpeningHoursCopyWithImpl<$Res> extends _$OpeningHoursCopyWithImpl<$Res>
    implements _$OpeningHoursCopyWith<$Res> {
  __$OpeningHoursCopyWithImpl(
      _OpeningHours _value, $Res Function(_OpeningHours) _then)
      : super(_value, (v) => _then(v as _OpeningHours));

  @override
  _OpeningHours get _value => super._value as _OpeningHours;

  @override
  $Res call({
    Object? openNow = freezed,
  }) {
    return _then(_OpeningHours(
      openNow: openNow == freezed
          ? _value.openNow
          : openNow // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpeningHours implements _OpeningHours {
  _$_OpeningHours({@JsonKey(name: 'open_now') this.openNow = false});

  factory _$_OpeningHours.fromJson(Map<String, dynamic> json) =>
      _$_$_OpeningHoursFromJson(json);

  @override
  @JsonKey(name: 'open_now')
  final bool openNow;

  @override
  String toString() {
    return 'OpeningHours(openNow: $openNow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OpeningHours &&
            (identical(other.openNow, openNow) ||
                const DeepCollectionEquality().equals(other.openNow, openNow)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(openNow);

  @JsonKey(ignore: true)
  @override
  _$OpeningHoursCopyWith<_OpeningHours> get copyWith =>
      __$OpeningHoursCopyWithImpl<_OpeningHours>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OpeningHoursToJson(this);
  }
}

abstract class _OpeningHours implements OpeningHours {
  factory _OpeningHours({@JsonKey(name: 'open_now') bool openNow}) =
      _$_OpeningHours;

  factory _OpeningHours.fromJson(Map<String, dynamic> json) =
      _$_OpeningHours.fromJson;

  @override
  @JsonKey(name: 'open_now')
  bool get openNow => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OpeningHoursCopyWith<_OpeningHours> get copyWith =>
      throw _privateConstructorUsedError;
}

Geometry _$GeometryFromJson(Map<String, dynamic> json) {
  return _Geometry.fromJson(json);
}

/// @nodoc
class _$GeometryTearOff {
  const _$GeometryTearOff();

  _Geometry call({@JsonKey(name: 'location') LatLng? location}) {
    return _Geometry(
      location: location,
    );
  }

  Geometry fromJson(Map<String, Object> json) {
    return Geometry.fromJson(json);
  }
}

/// @nodoc
const $Geometry = _$GeometryTearOff();

/// @nodoc
mixin _$Geometry {
  @JsonKey(name: 'location')
  LatLng? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeometryCopyWith<Geometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeometryCopyWith<$Res> {
  factory $GeometryCopyWith(Geometry value, $Res Function(Geometry) then) =
      _$GeometryCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'location') LatLng? location});

  $LatLngCopyWith<$Res>? get location;
}

/// @nodoc
class _$GeometryCopyWithImpl<$Res> implements $GeometryCopyWith<$Res> {
  _$GeometryCopyWithImpl(this._value, this._then);

  final Geometry _value;
  // ignore: unused_field
  final $Res Function(Geometry) _then;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ));
  }

  @override
  $LatLngCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LatLngCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$GeometryCopyWith<$Res> implements $GeometryCopyWith<$Res> {
  factory _$GeometryCopyWith(_Geometry value, $Res Function(_Geometry) then) =
      __$GeometryCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'location') LatLng? location});

  @override
  $LatLngCopyWith<$Res>? get location;
}

/// @nodoc
class __$GeometryCopyWithImpl<$Res> extends _$GeometryCopyWithImpl<$Res>
    implements _$GeometryCopyWith<$Res> {
  __$GeometryCopyWithImpl(_Geometry _value, $Res Function(_Geometry) _then)
      : super(_value, (v) => _then(v as _Geometry));

  @override
  _Geometry get _value => super._value as _Geometry;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_Geometry(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Geometry implements _Geometry {
  _$_Geometry({@JsonKey(name: 'location') this.location});

  factory _$_Geometry.fromJson(Map<String, dynamic> json) =>
      _$_$_GeometryFromJson(json);

  @override
  @JsonKey(name: 'location')
  final LatLng? location;

  @override
  String toString() {
    return 'Geometry(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Geometry &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$GeometryCopyWith<_Geometry> get copyWith =>
      __$GeometryCopyWithImpl<_Geometry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GeometryToJson(this);
  }
}

abstract class _Geometry implements Geometry {
  factory _Geometry({@JsonKey(name: 'location') LatLng? location}) =
      _$_Geometry;

  factory _Geometry.fromJson(Map<String, dynamic> json) = _$_Geometry.fromJson;

  @override
  @JsonKey(name: 'location')
  LatLng? get location => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GeometryCopyWith<_Geometry> get copyWith =>
      throw _privateConstructorUsedError;
}

Photos _$PhotosFromJson(Map<String, dynamic> json) {
  return _Photos.fromJson(json);
}

/// @nodoc
class _$PhotosTearOff {
  const _$PhotosTearOff();

  _Photos call(
      {@JsonKey(name: 'height') dynamic height = 0,
      @JsonKey(name: 'photo_reference') String? photoReference,
      @JsonKey(name: 'width') dynamic width = 0}) {
    return _Photos(
      height: height,
      photoReference: photoReference,
      width: width,
    );
  }

  Photos fromJson(Map<String, Object> json) {
    return Photos.fromJson(json);
  }
}

/// @nodoc
const $Photos = _$PhotosTearOff();

/// @nodoc
mixin _$Photos {
  @JsonKey(name: 'height')
  dynamic get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_reference')
  String? get photoReference => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  dynamic get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotosCopyWith<Photos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosCopyWith<$Res> {
  factory $PhotosCopyWith(Photos value, $Res Function(Photos) then) =
      _$PhotosCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'height') dynamic height,
      @JsonKey(name: 'photo_reference') String? photoReference,
      @JsonKey(name: 'width') dynamic width});
}

/// @nodoc
class _$PhotosCopyWithImpl<$Res> implements $PhotosCopyWith<$Res> {
  _$PhotosCopyWithImpl(this._value, this._then);

  final Photos _value;
  // ignore: unused_field
  final $Res Function(Photos) _then;

  @override
  $Res call({
    Object? height = freezed,
    Object? photoReference = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as dynamic,
      photoReference: photoReference == freezed
          ? _value.photoReference
          : photoReference // ignore: cast_nullable_to_non_nullable
              as String?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$PhotosCopyWith<$Res> implements $PhotosCopyWith<$Res> {
  factory _$PhotosCopyWith(_Photos value, $Res Function(_Photos) then) =
      __$PhotosCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'height') dynamic height,
      @JsonKey(name: 'photo_reference') String? photoReference,
      @JsonKey(name: 'width') dynamic width});
}

/// @nodoc
class __$PhotosCopyWithImpl<$Res> extends _$PhotosCopyWithImpl<$Res>
    implements _$PhotosCopyWith<$Res> {
  __$PhotosCopyWithImpl(_Photos _value, $Res Function(_Photos) _then)
      : super(_value, (v) => _then(v as _Photos));

  @override
  _Photos get _value => super._value as _Photos;

  @override
  $Res call({
    Object? height = freezed,
    Object? photoReference = freezed,
    Object? width = freezed,
  }) {
    return _then(_Photos(
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as dynamic,
      photoReference: photoReference == freezed
          ? _value.photoReference
          : photoReference // ignore: cast_nullable_to_non_nullable
              as String?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Photos implements _Photos {
  _$_Photos(
      {@JsonKey(name: 'height') this.height = 0,
      @JsonKey(name: 'photo_reference') this.photoReference,
      @JsonKey(name: 'width') this.width = 0});

  factory _$_Photos.fromJson(Map<String, dynamic> json) =>
      _$_$_PhotosFromJson(json);

  @override
  @JsonKey(name: 'height')
  final dynamic height;
  @override
  @JsonKey(name: 'photo_reference')
  final String? photoReference;
  @override
  @JsonKey(name: 'width')
  final dynamic width;

  @override
  String toString() {
    return 'Photos(height: $height, photoReference: $photoReference, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Photos &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.photoReference, photoReference) ||
                const DeepCollectionEquality()
                    .equals(other.photoReference, photoReference)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(photoReference) ^
      const DeepCollectionEquality().hash(width);

  @JsonKey(ignore: true)
  @override
  _$PhotosCopyWith<_Photos> get copyWith =>
      __$PhotosCopyWithImpl<_Photos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PhotosToJson(this);
  }
}

abstract class _Photos implements Photos {
  factory _Photos(
      {@JsonKey(name: 'height') dynamic height,
      @JsonKey(name: 'photo_reference') String? photoReference,
      @JsonKey(name: 'width') dynamic width}) = _$_Photos;

  factory _Photos.fromJson(Map<String, dynamic> json) = _$_Photos.fromJson;

  @override
  @JsonKey(name: 'height')
  dynamic get height => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'photo_reference')
  String? get photoReference => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'width')
  dynamic get width => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PhotosCopyWith<_Photos> get copyWith => throw _privateConstructorUsedError;
}
