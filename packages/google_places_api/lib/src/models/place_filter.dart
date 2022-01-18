// // ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_places_api/src/models/place.dart';

part 'place_filter.g.dart';
part 'place_filter.freezed.dart';

@JsonEnum()
enum PlaceType {
  @JsonValue('restaurant')
  restaurant,
  @JsonValue('night_club')
  // ignore: constant_identifier_names
  night_club,
  @JsonValue('bakery')
  bakery,
  @JsonValue('bar')
  bar,
  @JsonValue('meal_delivery')
  // ignore: constant_identifier_names
  meal_delivery,
  @JsonValue('meal_takeaway')
  // ignore: constant_identifier_names
  meal_takeaway,
  @JsonValue('cafe')
  cafe,
  @JsonValue('pharmacy')
  pharmacy,
  @JsonValue('liquor_store1')
  // ignore: constant_identifier_names
  liquor_store1
}

@freezed
class PlaceFilter with _$PlaceFilter {
  factory PlaceFilter({
    @JsonKey(name: 'lat_lng', toJson: locationToJson) required LatLng? latLng,
    @JsonKey(name: 'place_type') required PlaceType placeType,
    @Default(20000) double radius,
  }) = _PlaceFilter;

  factory PlaceFilter.fromJson(Map<String, dynamic> json) =>
      _$PlaceFilterFromJson(json);
}



@freezed
class LatLng with _$LatLng {
  factory LatLng({
    @JsonKey(name: 'lat') required double latitude,
    @JsonKey(name: 'lng') required double longitude,
  }) = _LatLng;

  factory LatLng.fromJson(Map<String, dynamic> json) => _$LatLngFromJson(json);
}
