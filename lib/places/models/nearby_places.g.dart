// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'nearby_places.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NearbyPlaces _$NearbyPlacesFromJson(Map<String, dynamic> json) {
  return NearbyPlaces(
    places: (json['places'] as List<dynamic>)
        .map((e) => Place.fromJson(e as Map<String, dynamic>))
        .toList(),
    searchParams:
        SearchParams.fromJson(json['searchParams'] as Map<String, dynamic>),
    lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  );
}

Map<String, dynamic> _$NearbyPlacesToJson(NearbyPlaces instance) =>
    <String, dynamic>{
      'places': instance.places,
      'searchParams': instance.searchParams,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
    };
