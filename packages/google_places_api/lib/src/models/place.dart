// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'place.g.dart';
part 'place.freezed.dart';



@freezed
class NearbyPlacesResults with _$NearbyPlacesResults {
  const NearbyPlacesResults._();

  const factory NearbyPlacesResults({
    @Default('') String status,
    @JsonKey(name: 'next_page_token') String? nextPageToken,
    @Default([])
    @JsonKey(name: 'results', toJson: toJsonPlaces)
        List<Place> places,
  }) = _NearbyPlacesResults;

  factory NearbyPlacesResults.fromJson(Map<String, dynamic> json) =>
      _$NearbyPlacesResultsFromJson(json);
}

List<Map<String, dynamic>> toJsonPlaces(List<Place> places) {
  return places.map((place) => place.toJson()).toList(growable: false);
}

@freezed
class Place with _$Place {
  factory Place({
    @Default('') String name,
    @JsonKey(name: 'opening_hours', toJson: openingHoursToJson) OpeningHours? openingHours,
    @JsonKey(name: 'geometry',  toJson: geometryToJson) Geometry? geometry,
    @Default([]) @JsonKey(name: 'photos', toJson: toJsonPhotos) List<Photo> photos,
    @JsonKey(name: 'place_id') String? placeId,
    @Default(0) @JsonKey(name: 'rating') dynamic rating,
    @Default([]) List<String> types,
    @Default(0) @JsonKey(name: 'user_ratings_total') dynamic userRatingsTotal,
    @JsonKey(name: 'vicinity') String? vicinity,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}
Map<String, dynamic>? openingHoursToJson(OpeningHours? location) => location?.toJson();
Map<String, dynamic>? geometryToJson(Geometry? geometry) => geometry?.toJson();


List<Map<String, dynamic>> toJsonPhotos(List<Photo> photos) {
  return photos.map((photo) => photo.toJson()).toList(growable: false);
}

@freezed
class OpeningHours with _$OpeningHours {
  const OpeningHours._();

  const factory OpeningHours(
          {@JsonKey(name: 'open_now') @Default(false) bool openNow}) =
      _OpeningHours;

  factory OpeningHours.fromJson(Map<String, dynamic> json) =>
      _$OpeningHoursFromJson(json);
}


@freezed
class Geometry with _$Geometry {
  factory Geometry({
    @JsonKey(name: 'location', toJson: locationToJson) LatLng? location,
  }) = _Geometry;

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
      
}
Map<String, dynamic>? locationToJson(LatLng? location) => location?.toJson();



@freezed
class Photo with _$Photo {
  factory Photo({
    @Default(0) @JsonKey(name: 'height') dynamic height,
    @JsonKey(name: 'photo_reference') String? photoReference,
    @Default(0) @JsonKey(name: 'width') dynamic width,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
