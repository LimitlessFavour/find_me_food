// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchParams _$_$_SearchParamsFromJson(Map<String, dynamic> json) {
  return _$_SearchParams(
    lastUpdatedLocation: json['last_updated_location'] == null
        ? null
        : LatLng.fromJson(
            json['last_updated_location'] as Map<String, dynamic>),
    currentLocation: json['current_location'] == null
        ? null
        : LatLng.fromJson(json['current_location'] as Map<String, dynamic>),
    placeFilter:
        PlaceFilter.fromJson(json['place_filter'] as Map<String, dynamic>),
    forceRefresh: json['force_refresh'] as bool,
    searchDistance: json['search_distance'] as num,
  );
}

Map<String, dynamic> _$_$_SearchParamsToJson(_$_SearchParams instance) =>
    <String, dynamic>{
      'last_updated_location': instance.lastUpdatedLocation,
      'current_location': instance.currentLocation,
      'place_filter': instance.placeFilter,
      'force_refresh': instance.forceRefresh,
      'search_distance': instance.searchDistance,
    };
