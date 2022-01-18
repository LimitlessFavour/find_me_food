// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      @JsonKey(name: 'next_page_token')
          String? nextPageToken,
      @JsonKey(name: 'results', toJson: toJsonPlaces)
          List<Place> places = const []}) {
    return _NearbyPlacesResults(
      status: status,
      nextPageToken: nextPageToken,
      places: places,
    );
  }

  NearbyPlacesResults fromJson(Map<String, Object?> json) {
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
  @JsonKey(name: 'results', toJson: toJsonPlaces)
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
      @JsonKey(name: 'results', toJson: toJsonPlaces) List<Place> places});
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
      @JsonKey(name: 'results', toJson: toJsonPlaces) List<Place> places});
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
class _$_NearbyPlacesResults extends _NearbyPlacesResults {
  const _$_NearbyPlacesResults(
      {this.status = '',
      @JsonKey(name: 'next_page_token') this.nextPageToken,
      @JsonKey(name: 'results', toJson: toJsonPlaces) this.places = const []})
      : super._();

  factory _$_NearbyPlacesResults.fromJson(Map<String, dynamic> json) =>
      _$$_NearbyPlacesResultsFromJson(json);

  @JsonKey()
  @override
  final String status;
  @override
  @JsonKey(name: 'next_page_token')
  final String? nextPageToken;
  @override
  @JsonKey(name: 'results', toJson: toJsonPlaces)
  final List<Place> places;

  @override
  String toString() {
    return 'NearbyPlacesResults(status: $status, nextPageToken: $nextPageToken, places: $places)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NearbyPlacesResults &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.nextPageToken, nextPageToken) &&
            const DeepCollectionEquality().equals(other.places, places));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(nextPageToken),
      const DeepCollectionEquality().hash(places));

  @JsonKey(ignore: true)
  @override
  _$NearbyPlacesResultsCopyWith<_NearbyPlacesResults> get copyWith =>
      __$NearbyPlacesResultsCopyWithImpl<_NearbyPlacesResults>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NearbyPlacesResultsToJson(this);
  }
}

abstract class _NearbyPlacesResults extends NearbyPlacesResults {
  const factory _NearbyPlacesResults(
          {String status,
          @JsonKey(name: 'next_page_token') String? nextPageToken,
          @JsonKey(name: 'results', toJson: toJsonPlaces) List<Place> places}) =
      _$_NearbyPlacesResults;
  const _NearbyPlacesResults._() : super._();

  factory _NearbyPlacesResults.fromJson(Map<String, dynamic> json) =
      _$_NearbyPlacesResults.fromJson;

  @override
  String get status;
  @override
  @JsonKey(name: 'next_page_token')
  String? get nextPageToken;
  @override
  @JsonKey(name: 'results', toJson: toJsonPlaces)
  List<Place> get places;
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
      @JsonKey(name: 'opening_hours', toJson: openingHoursToJson)
          OpeningHours? openingHours,
      @JsonKey(name: 'geometry', toJson: geometryToJson)
          Geometry? geometry,
      @JsonKey(name: 'photos', toJson: toJsonPhotos)
          List<Photo> photos = const [],
      @JsonKey(name: 'place_id')
          String? placeId,
      @JsonKey(name: 'rating')
          dynamic rating = 0,
      List<String> types = const [],
      @JsonKey(name: 'user_ratings_total')
          dynamic userRatingsTotal = 0,
      @JsonKey(name: 'vicinity')
          String? vicinity}) {
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

  Place fromJson(Map<String, Object?> json) {
    return Place.fromJson(json);
  }
}

/// @nodoc
const $Place = _$PlaceTearOff();

/// @nodoc
mixin _$Place {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'opening_hours', toJson: openingHoursToJson)
  OpeningHours? get openingHours => throw _privateConstructorUsedError;
  @JsonKey(name: 'geometry', toJson: geometryToJson)
  Geometry? get geometry => throw _privateConstructorUsedError;
  @JsonKey(name: 'photos', toJson: toJsonPhotos)
  List<Photo> get photos => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'opening_hours', toJson: openingHoursToJson)
          OpeningHours? openingHours,
      @JsonKey(name: 'geometry', toJson: geometryToJson)
          Geometry? geometry,
      @JsonKey(name: 'photos', toJson: toJsonPhotos)
          List<Photo> photos,
      @JsonKey(name: 'place_id')
          String? placeId,
      @JsonKey(name: 'rating')
          dynamic rating,
      List<String> types,
      @JsonKey(name: 'user_ratings_total')
          dynamic userRatingsTotal,
      @JsonKey(name: 'vicinity')
          String? vicinity});

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
              as List<Photo>,
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
      @JsonKey(name: 'opening_hours', toJson: openingHoursToJson)
          OpeningHours? openingHours,
      @JsonKey(name: 'geometry', toJson: geometryToJson)
          Geometry? geometry,
      @JsonKey(name: 'photos', toJson: toJsonPhotos)
          List<Photo> photos,
      @JsonKey(name: 'place_id')
          String? placeId,
      @JsonKey(name: 'rating')
          dynamic rating,
      List<String> types,
      @JsonKey(name: 'user_ratings_total')
          dynamic userRatingsTotal,
      @JsonKey(name: 'vicinity')
          String? vicinity});

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
              as List<Photo>,
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
      @JsonKey(name: 'opening_hours', toJson: openingHoursToJson)
          this.openingHours,
      @JsonKey(name: 'geometry', toJson: geometryToJson)
          this.geometry,
      @JsonKey(name: 'photos', toJson: toJsonPhotos)
          this.photos = const [],
      @JsonKey(name: 'place_id')
          this.placeId,
      @JsonKey(name: 'rating')
          this.rating = 0,
      this.types = const [],
      @JsonKey(name: 'user_ratings_total')
          this.userRatingsTotal = 0,
      @JsonKey(name: 'vicinity')
          this.vicinity});

  factory _$_Place.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceFromJson(json);

  @JsonKey()
  @override
  final String name;
  @override
  @JsonKey(name: 'opening_hours', toJson: openingHoursToJson)
  final OpeningHours? openingHours;
  @override
  @JsonKey(name: 'geometry', toJson: geometryToJson)
  final Geometry? geometry;
  @override
  @JsonKey(name: 'photos', toJson: toJsonPhotos)
  final List<Photo> photos;
  @override
  @JsonKey(name: 'place_id')
  final String? placeId;
  @override
  @JsonKey(name: 'rating')
  final dynamic rating;
  @JsonKey()
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
        (other.runtimeType == runtimeType &&
            other is _Place &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.openingHours, openingHours) &&
            const DeepCollectionEquality().equals(other.geometry, geometry) &&
            const DeepCollectionEquality().equals(other.photos, photos) &&
            const DeepCollectionEquality().equals(other.placeId, placeId) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.types, types) &&
            const DeepCollectionEquality()
                .equals(other.userRatingsTotal, userRatingsTotal) &&
            const DeepCollectionEquality().equals(other.vicinity, vicinity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(openingHours),
      const DeepCollectionEquality().hash(geometry),
      const DeepCollectionEquality().hash(photos),
      const DeepCollectionEquality().hash(placeId),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(types),
      const DeepCollectionEquality().hash(userRatingsTotal),
      const DeepCollectionEquality().hash(vicinity));

  @JsonKey(ignore: true)
  @override
  _$PlaceCopyWith<_Place> get copyWith =>
      __$PlaceCopyWithImpl<_Place>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceToJson(this);
  }
}

abstract class _Place implements Place {
  factory _Place(
      {String name,
      @JsonKey(name: 'opening_hours', toJson: openingHoursToJson)
          OpeningHours? openingHours,
      @JsonKey(name: 'geometry', toJson: geometryToJson)
          Geometry? geometry,
      @JsonKey(name: 'photos', toJson: toJsonPhotos)
          List<Photo> photos,
      @JsonKey(name: 'place_id')
          String? placeId,
      @JsonKey(name: 'rating')
          dynamic rating,
      List<String> types,
      @JsonKey(name: 'user_ratings_total')
          dynamic userRatingsTotal,
      @JsonKey(name: 'vicinity')
          String? vicinity}) = _$_Place;

  factory _Place.fromJson(Map<String, dynamic> json) = _$_Place.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'opening_hours', toJson: openingHoursToJson)
  OpeningHours? get openingHours;
  @override
  @JsonKey(name: 'geometry', toJson: geometryToJson)
  Geometry? get geometry;
  @override
  @JsonKey(name: 'photos', toJson: toJsonPhotos)
  List<Photo> get photos;
  @override
  @JsonKey(name: 'place_id')
  String? get placeId;
  @override
  @JsonKey(name: 'rating')
  dynamic get rating;
  @override
  List<String> get types;
  @override
  @JsonKey(name: 'user_ratings_total')
  dynamic get userRatingsTotal;
  @override
  @JsonKey(name: 'vicinity')
  String? get vicinity;
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

  OpeningHours fromJson(Map<String, Object?> json) {
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
class _$_OpeningHours extends _OpeningHours {
  const _$_OpeningHours({@JsonKey(name: 'open_now') this.openNow = false})
      : super._();

  factory _$_OpeningHours.fromJson(Map<String, dynamic> json) =>
      _$$_OpeningHoursFromJson(json);

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
        (other.runtimeType == runtimeType &&
            other is _OpeningHours &&
            const DeepCollectionEquality().equals(other.openNow, openNow));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(openNow));

  @JsonKey(ignore: true)
  @override
  _$OpeningHoursCopyWith<_OpeningHours> get copyWith =>
      __$OpeningHoursCopyWithImpl<_OpeningHours>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpeningHoursToJson(this);
  }
}

abstract class _OpeningHours extends OpeningHours {
  const factory _OpeningHours({@JsonKey(name: 'open_now') bool openNow}) =
      _$_OpeningHours;
  const _OpeningHours._() : super._();

  factory _OpeningHours.fromJson(Map<String, dynamic> json) =
      _$_OpeningHours.fromJson;

  @override
  @JsonKey(name: 'open_now')
  bool get openNow;
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

  _Geometry call(
      {@JsonKey(name: 'location', toJson: locationToJson) LatLng? location}) {
    return _Geometry(
      location: location,
    );
  }

  Geometry fromJson(Map<String, Object?> json) {
    return Geometry.fromJson(json);
  }
}

/// @nodoc
const $Geometry = _$GeometryTearOff();

/// @nodoc
mixin _$Geometry {
  @JsonKey(name: 'location', toJson: locationToJson)
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
  $Res call(
      {@JsonKey(name: 'location', toJson: locationToJson) LatLng? location});

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
  $Res call(
      {@JsonKey(name: 'location', toJson: locationToJson) LatLng? location});

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
  _$_Geometry(
      {@JsonKey(name: 'location', toJson: locationToJson) this.location});

  factory _$_Geometry.fromJson(Map<String, dynamic> json) =>
      _$$_GeometryFromJson(json);

  @override
  @JsonKey(name: 'location', toJson: locationToJson)
  final LatLng? location;

  @override
  String toString() {
    return 'Geometry(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Geometry &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$GeometryCopyWith<_Geometry> get copyWith =>
      __$GeometryCopyWithImpl<_Geometry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeometryToJson(this);
  }
}

abstract class _Geometry implements Geometry {
  factory _Geometry(
      {@JsonKey(name: 'location', toJson: locationToJson)
          LatLng? location}) = _$_Geometry;

  factory _Geometry.fromJson(Map<String, dynamic> json) = _$_Geometry.fromJson;

  @override
  @JsonKey(name: 'location', toJson: locationToJson)
  LatLng? get location;
  @override
  @JsonKey(ignore: true)
  _$GeometryCopyWith<_Geometry> get copyWith =>
      throw _privateConstructorUsedError;
}

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return _Photo.fromJson(json);
}

/// @nodoc
class _$PhotoTearOff {
  const _$PhotoTearOff();

  _Photo call(
      {@JsonKey(name: 'height') dynamic height = 0,
      @JsonKey(name: 'photo_reference') String? photoReference,
      @JsonKey(name: 'width') dynamic width = 0}) {
    return _Photo(
      height: height,
      photoReference: photoReference,
      width: width,
    );
  }

  Photo fromJson(Map<String, Object?> json) {
    return Photo.fromJson(json);
  }
}

/// @nodoc
const $Photo = _$PhotoTearOff();

/// @nodoc
mixin _$Photo {
  @JsonKey(name: 'height')
  dynamic get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_reference')
  String? get photoReference => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  dynamic get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) =
      _$PhotoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'height') dynamic height,
      @JsonKey(name: 'photo_reference') String? photoReference,
      @JsonKey(name: 'width') dynamic width});
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res> implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  final Photo _value;
  // ignore: unused_field
  final $Res Function(Photo) _then;

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
abstract class _$PhotoCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$PhotoCopyWith(_Photo value, $Res Function(_Photo) then) =
      __$PhotoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'height') dynamic height,
      @JsonKey(name: 'photo_reference') String? photoReference,
      @JsonKey(name: 'width') dynamic width});
}

/// @nodoc
class __$PhotoCopyWithImpl<$Res> extends _$PhotoCopyWithImpl<$Res>
    implements _$PhotoCopyWith<$Res> {
  __$PhotoCopyWithImpl(_Photo _value, $Res Function(_Photo) _then)
      : super(_value, (v) => _then(v as _Photo));

  @override
  _Photo get _value => super._value as _Photo;

  @override
  $Res call({
    Object? height = freezed,
    Object? photoReference = freezed,
    Object? width = freezed,
  }) {
    return _then(_Photo(
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
class _$_Photo implements _Photo {
  _$_Photo(
      {@JsonKey(name: 'height') this.height = 0,
      @JsonKey(name: 'photo_reference') this.photoReference,
      @JsonKey(name: 'width') this.width = 0});

  factory _$_Photo.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoFromJson(json);

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
    return 'Photo(height: $height, photoReference: $photoReference, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Photo &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality()
                .equals(other.photoReference, photoReference) &&
            const DeepCollectionEquality().equals(other.width, width));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(photoReference),
      const DeepCollectionEquality().hash(width));

  @JsonKey(ignore: true)
  @override
  _$PhotoCopyWith<_Photo> get copyWith =>
      __$PhotoCopyWithImpl<_Photo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoToJson(this);
  }
}

abstract class _Photo implements Photo {
  factory _Photo(
      {@JsonKey(name: 'height') dynamic height,
      @JsonKey(name: 'photo_reference') String? photoReference,
      @JsonKey(name: 'width') dynamic width}) = _$_Photo;

  factory _Photo.fromJson(Map<String, dynamic> json) = _$_Photo.fromJson;

  @override
  @JsonKey(name: 'height')
  dynamic get height;
  @override
  @JsonKey(name: 'photo_reference')
  String? get photoReference;
  @override
  @JsonKey(name: 'width')
  dynamic get width;
  @override
  @JsonKey(ignore: true)
  _$PhotoCopyWith<_Photo> get copyWith => throw _privateConstructorUsedError;
}
