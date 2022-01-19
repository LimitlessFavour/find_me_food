// ignore_for_file: lines_longer_than_80_chars, invalid_annotation_target

import 'package:equatable/equatable.dart';
import 'package:find_me_food_bloc/places/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nearby_places_repository/nearby_places_repository.dart';

part 'nearby_places.freezed.dart';
part 'nearby_places.g.dart';

List<Map<String, dynamic>> placesToJson(List<Place> places) {
  return places.map((place) => place.toJson()).toList(growable: false);
}


Map<String, dynamic>? searchParamsToJson(SearchParams? searchParams) {
  return searchParams?.toJson();
}

@freezed
class NearbyPlaces with _$NearbyPlaces {
  const factory NearbyPlaces({
    @Default(<Place>[]) List<Place> places,
    @JsonKey(toJson: searchParamsToJson) required SearchParams searchParams,
     DateTime? lastUpdated,
  }) = _NearbyPlaces;

  factory NearbyPlaces.fromRepository(
      List<Place> nearbyPlaces, SearchParams searchParams) {
    return NearbyPlaces(
      places: nearbyPlaces,
      searchParams: searchParams,
      lastUpdated: DateTime.now(),
    );
  }
  factory NearbyPlaces.fromJson(Map<String, dynamic> json) =>
      _$NearbyPlacesFromJson(json);

  static const NearbyPlaces empty = NearbyPlaces(
    // lastUpdated: const DateTime.now(),
    searchParams: SearchParams.empty,
  );
}





// @JsonSerializable()
// class NearbyPlaces extends Equatable {
//   const NearbyPlaces({
//     this.places = const [],
//     required this.searchParams,
//     required this.lastUpdated,
//   });

//   factory NearbyPlaces.fromRepository(
//     List<nearby_places_repository.Place> nearbyPlaces,
//     nearby_places_repository.SearchParams searchParams,
//   ) {
//     return NearbyPlaces(
//       places: nearbyPlaces,
//       searchParams: searchParams,
//       lastUpdated: DateTime.now(),
//     );
//   }
//   factory NearbyPlaces.fromJson(Map<String, dynamic> json) =>
//       _$NearbyPlacesFromJson(json);

//   static final empty = NearbyPlaces(
//     lastUpdated: DateTime(0),
//     searchParams: nearby_places_repository.SearchParams.empty,
//   );

//   final List<nearby_places_repository.Place> places;
//   final nearby_places_repository.SearchParams searchParams;
//   final DateTime lastUpdated;

//   Map<String, dynamic> toJson() => _$NearbyPlacesToJson(this);

//   @override
//   List<Object> get props => [places, searchParams, lastUpdated];

//   NearbyPlaces copyWith({
//     nearby_places_repository.SearchParams? searchParams,
//     List<nearby_places_repository.Place>? places,
//     DateTime? lastUpdated,
//   }) {
//     return NearbyPlaces(
//       searchParams: searchParams ?? this.searchParams,
//       places: places ?? this.places,
//       lastUpdated: lastUpdated ?? this.lastUpdated,
//     );
//   }
// }
