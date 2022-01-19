// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_places_api/google_places_api.dart';

part 'search_params.g.dart';
part 'search_params.freezed.dart';

Map<String, dynamic>? placeFilterToJson(PlaceFilter filter) => filter.toJson();
Map<String, dynamic>? latLngToJson(LatLng? location) => location?.toJson();

@freezed
class SearchParams with _$SearchParams {
  const factory SearchParams({
    @JsonKey(name: 'last_updated_location', toJson: latLngToJson)
        required LatLng? lastUpdatedLocation,
    @JsonKey(name: 'current_location', toJson: latLngToJson)
        required LatLng? currentLocation,
    @JsonKey(name: 'place_filter', toJson: placeFilterToJson)
        required PlaceFilter placeFilter,
    @Default(false) @JsonKey(name: 'force_refresh') bool forceRefresh,
    @Default(3000) @JsonKey(name: 'search_distance') num searchDistance,
  }) = _SearchParams;

  factory SearchParams.fromJson(Map<String, dynamic> json) =>
      _$SearchParamsFromJson(json);


  static const empty =  SearchParams(
    lastUpdatedLocation: null,
    currentLocation: null,
    placeFilter: PlaceFilter(
      latLng: null,
      placeType: PlaceType.restaurant,
    ),
  );
}
