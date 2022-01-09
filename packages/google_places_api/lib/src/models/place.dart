// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'place.g.dart';
part 'place.freezed.dart';

@freezed
class NearbyPlacesResults with _$NearbyPlacesResults {
  factory NearbyPlacesResults({
    @Default('') String status,
    @JsonKey(name: 'next_page_token') String? nextPageToken,
    @Default([]) @JsonKey(name: 'results') List<Place> places,
  }) = _NearbyPlacesResults;

  factory NearbyPlacesResults.fromJson(Map<String, dynamic> json) =>
      _$NearbyPlacesResultsFromJson(json);
}

@freezed
class Place with _$Place {
  factory Place({
    @Default('') String name,
    @JsonKey(name: 'opening_hours') OpeningHours? openingHours,
    @JsonKey(name: 'geometry') Geometry? geometry,
    @Default([]) @JsonKey(name: 'photos') List<Photos> photos,
    @JsonKey(name: 'place_id') String? placeId,
    @Default(0) @JsonKey(name: 'rating') dynamic rating,
    @Default([]) List<String> types,
    @Default(0) @JsonKey(name: 'user_ratings_total') dynamic userRatingsTotal,
    @JsonKey(name: 'vicinity') String? vicinity,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}

@freezed
class OpeningHours with _$OpeningHours {
  factory OpeningHours(
          {@JsonKey(name: 'open_now') @Default(false) bool openNow}) =
      _OpeningHours;

  factory OpeningHours.fromJson(Map<String, dynamic> json) =>
      _$OpeningHoursFromJson(json);
}

@freezed
class Geometry with _$Geometry {
  factory Geometry({
   @JsonKey(name: 'location') LatLng? location,
  }) = _Geometry;

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
}

// @freezed
// class LatLng with _$LatLng {
//   factory LatLng({
//     @JsonKey(name: 'lat') @Default(0) double latitude,
//     @JsonKey(name: 'lng') @Default(0) double longitude,
//   }) = _LatLng;

//   factory LatLng.fromJson(Map<String, dynamic> json) => _$LatLng(json);
// }

@freezed
class Photos with _$Photos {
  factory Photos({
    @Default(0) @JsonKey(name: 'height') dynamic height,
    @JsonKey(name: 'photo_reference') String? photoReference,
    @Default(0) @JsonKey(name: 'width') dynamic width,
  }) = _Photos;

  factory Photos.fromJson(Map<String, dynamic> json) => _$PhotosFromJson(json);
}
