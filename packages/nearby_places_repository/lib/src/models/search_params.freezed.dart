// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchParams _$SearchParamsFromJson(Map<String, dynamic> json) {
  return _SearchParams.fromJson(json);
}

/// @nodoc
class _$SearchParamsTearOff {
  const _$SearchParamsTearOff();

  _SearchParams call(
      {@JsonKey(name: 'last_updated_location')
          required LatLng? lastUpdatedLocation,
      @JsonKey(name: 'current_location')
          required LatLng? currentLocation,
      @JsonKey(name: 'place_filter')
          required PlaceFilter placeFilter,
      @JsonKey(name: 'force_refresh')
          bool forceRefresh = false,
      @JsonKey(name: 'search_distance')
          num searchDistance = 3000}) {
    return _SearchParams(
      lastUpdatedLocation: lastUpdatedLocation,
      currentLocation: currentLocation,
      placeFilter: placeFilter,
      forceRefresh: forceRefresh,
      searchDistance: searchDistance,
    );
  }

  SearchParams fromJson(Map<String, Object> json) {
    return SearchParams.fromJson(json);
  }
}

/// @nodoc
const $SearchParams = _$SearchParamsTearOff();

/// @nodoc
mixin _$SearchParams {
  @JsonKey(name: 'last_updated_location')
  LatLng? get lastUpdatedLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_location')
  LatLng? get currentLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_filter')
  PlaceFilter get placeFilter => throw _privateConstructorUsedError;
  @JsonKey(name: 'force_refresh')
  bool get forceRefresh => throw _privateConstructorUsedError;
  @JsonKey(name: 'search_distance')
  num get searchDistance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchParamsCopyWith<SearchParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchParamsCopyWith<$Res> {
  factory $SearchParamsCopyWith(
          SearchParams value, $Res Function(SearchParams) then) =
      _$SearchParamsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'last_updated_location') LatLng? lastUpdatedLocation,
      @JsonKey(name: 'current_location') LatLng? currentLocation,
      @JsonKey(name: 'place_filter') PlaceFilter placeFilter,
      @JsonKey(name: 'force_refresh') bool forceRefresh,
      @JsonKey(name: 'search_distance') num searchDistance});

  $LatLngCopyWith<$Res>? get lastUpdatedLocation;
  $LatLngCopyWith<$Res>? get currentLocation;
  $PlaceFilterCopyWith<$Res> get placeFilter;
}

/// @nodoc
class _$SearchParamsCopyWithImpl<$Res> implements $SearchParamsCopyWith<$Res> {
  _$SearchParamsCopyWithImpl(this._value, this._then);

  final SearchParams _value;
  // ignore: unused_field
  final $Res Function(SearchParams) _then;

  @override
  $Res call({
    Object? lastUpdatedLocation = freezed,
    Object? currentLocation = freezed,
    Object? placeFilter = freezed,
    Object? forceRefresh = freezed,
    Object? searchDistance = freezed,
  }) {
    return _then(_value.copyWith(
      lastUpdatedLocation: lastUpdatedLocation == freezed
          ? _value.lastUpdatedLocation
          : lastUpdatedLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      currentLocation: currentLocation == freezed
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      placeFilter: placeFilter == freezed
          ? _value.placeFilter
          : placeFilter // ignore: cast_nullable_to_non_nullable
              as PlaceFilter,
      forceRefresh: forceRefresh == freezed
          ? _value.forceRefresh
          : forceRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
      searchDistance: searchDistance == freezed
          ? _value.searchDistance
          : searchDistance // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }

  @override
  $LatLngCopyWith<$Res>? get lastUpdatedLocation {
    if (_value.lastUpdatedLocation == null) {
      return null;
    }

    return $LatLngCopyWith<$Res>(_value.lastUpdatedLocation!, (value) {
      return _then(_value.copyWith(lastUpdatedLocation: value));
    });
  }

  @override
  $LatLngCopyWith<$Res>? get currentLocation {
    if (_value.currentLocation == null) {
      return null;
    }

    return $LatLngCopyWith<$Res>(_value.currentLocation!, (value) {
      return _then(_value.copyWith(currentLocation: value));
    });
  }

  @override
  $PlaceFilterCopyWith<$Res> get placeFilter {
    return $PlaceFilterCopyWith<$Res>(_value.placeFilter, (value) {
      return _then(_value.copyWith(placeFilter: value));
    });
  }
}

/// @nodoc
abstract class _$SearchParamsCopyWith<$Res>
    implements $SearchParamsCopyWith<$Res> {
  factory _$SearchParamsCopyWith(
          _SearchParams value, $Res Function(_SearchParams) then) =
      __$SearchParamsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'last_updated_location') LatLng? lastUpdatedLocation,
      @JsonKey(name: 'current_location') LatLng? currentLocation,
      @JsonKey(name: 'place_filter') PlaceFilter placeFilter,
      @JsonKey(name: 'force_refresh') bool forceRefresh,
      @JsonKey(name: 'search_distance') num searchDistance});

  @override
  $LatLngCopyWith<$Res>? get lastUpdatedLocation;
  @override
  $LatLngCopyWith<$Res>? get currentLocation;
  @override
  $PlaceFilterCopyWith<$Res> get placeFilter;
}

/// @nodoc
class __$SearchParamsCopyWithImpl<$Res> extends _$SearchParamsCopyWithImpl<$Res>
    implements _$SearchParamsCopyWith<$Res> {
  __$SearchParamsCopyWithImpl(
      _SearchParams _value, $Res Function(_SearchParams) _then)
      : super(_value, (v) => _then(v as _SearchParams));

  @override
  _SearchParams get _value => super._value as _SearchParams;

  @override
  $Res call({
    Object? lastUpdatedLocation = freezed,
    Object? currentLocation = freezed,
    Object? placeFilter = freezed,
    Object? forceRefresh = freezed,
    Object? searchDistance = freezed,
  }) {
    return _then(_SearchParams(
      lastUpdatedLocation: lastUpdatedLocation == freezed
          ? _value.lastUpdatedLocation
          : lastUpdatedLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      currentLocation: currentLocation == freezed
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      placeFilter: placeFilter == freezed
          ? _value.placeFilter
          : placeFilter // ignore: cast_nullable_to_non_nullable
              as PlaceFilter,
      forceRefresh: forceRefresh == freezed
          ? _value.forceRefresh
          : forceRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
      searchDistance: searchDistance == freezed
          ? _value.searchDistance
          : searchDistance // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchParams implements _SearchParams {
  _$_SearchParams(
      {@JsonKey(name: 'last_updated_location')
          required this.lastUpdatedLocation,
      @JsonKey(name: 'current_location')
          required this.currentLocation,
      @JsonKey(name: 'place_filter')
          required this.placeFilter,
      @JsonKey(name: 'force_refresh')
          this.forceRefresh = false,
      @JsonKey(name: 'search_distance')
          this.searchDistance = 3000});

  factory _$_SearchParams.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchParamsFromJson(json);

  @override
  @JsonKey(name: 'last_updated_location')
  final LatLng? lastUpdatedLocation;
  @override
  @JsonKey(name: 'current_location')
  final LatLng? currentLocation;
  @override
  @JsonKey(name: 'place_filter')
  final PlaceFilter placeFilter;
  @override
  @JsonKey(name: 'force_refresh')
  final bool forceRefresh;
  @override
  @JsonKey(name: 'search_distance')
  final num searchDistance;

  @override
  String toString() {
    return 'SearchParams(lastUpdatedLocation: $lastUpdatedLocation, currentLocation: $currentLocation, placeFilter: $placeFilter, forceRefresh: $forceRefresh, searchDistance: $searchDistance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchParams &&
            (identical(other.lastUpdatedLocation, lastUpdatedLocation) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdatedLocation, lastUpdatedLocation)) &&
            (identical(other.currentLocation, currentLocation) ||
                const DeepCollectionEquality()
                    .equals(other.currentLocation, currentLocation)) &&
            (identical(other.placeFilter, placeFilter) ||
                const DeepCollectionEquality()
                    .equals(other.placeFilter, placeFilter)) &&
            (identical(other.forceRefresh, forceRefresh) ||
                const DeepCollectionEquality()
                    .equals(other.forceRefresh, forceRefresh)) &&
            (identical(other.searchDistance, searchDistance) ||
                const DeepCollectionEquality()
                    .equals(other.searchDistance, searchDistance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lastUpdatedLocation) ^
      const DeepCollectionEquality().hash(currentLocation) ^
      const DeepCollectionEquality().hash(placeFilter) ^
      const DeepCollectionEquality().hash(forceRefresh) ^
      const DeepCollectionEquality().hash(searchDistance);

  @JsonKey(ignore: true)
  @override
  _$SearchParamsCopyWith<_SearchParams> get copyWith =>
      __$SearchParamsCopyWithImpl<_SearchParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchParamsToJson(this);
  }
}

abstract class _SearchParams implements SearchParams {
  factory _SearchParams(
      {@JsonKey(name: 'last_updated_location')
          required LatLng? lastUpdatedLocation,
      @JsonKey(name: 'current_location')
          required LatLng? currentLocation,
      @JsonKey(name: 'place_filter')
          required PlaceFilter placeFilter,
      @JsonKey(name: 'force_refresh')
          bool forceRefresh,
      @JsonKey(name: 'search_distance')
          num searchDistance}) = _$_SearchParams;

  factory _SearchParams.fromJson(Map<String, dynamic> json) =
      _$_SearchParams.fromJson;

  @override
  @JsonKey(name: 'last_updated_location')
  LatLng? get lastUpdatedLocation => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'current_location')
  LatLng? get currentLocation => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'place_filter')
  PlaceFilter get placeFilter => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'force_refresh')
  bool get forceRefresh => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'search_distance')
  num get searchDistance => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchParamsCopyWith<_SearchParams> get copyWith =>
      throw _privateConstructorUsedError;
}
