// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_places_api/google_places_api.dart';

part 'search_params.g.dart';
part 'search_params.freezed.dart';

@freezed
class SearchParams with _$SearchParams {
  factory SearchParams({
    @JsonKey(name: 'last_updated_location') required LatLng? lastUpdatedLocation,
    @JsonKey(name: 'current_location') required LatLng? currentLocation,
    @JsonKey(name: 'place_filter') required PlaceFilter placeFilter,
    @Default(false) @JsonKey(name: 'force_refresh') bool forceRefresh,
  }) = _SearchParams;

  factory SearchParams.fromJson(Map<String, dynamic> json) =>
      _$SearchParamsFromJson(json);
}