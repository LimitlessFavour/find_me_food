// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'nearby_places.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NearbyPlaces _$$_NearbyPlacesFromJson(Map<String, dynamic> json) =>
    _$_NearbyPlaces(
      places: (json['places'] as List<dynamic>?)
              ?.map((e) => Place.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Place>[],
      searchParams:
          SearchParams.fromJson(json['searchParams'] as Map<String, dynamic>),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$$_NearbyPlacesToJson(_$_NearbyPlaces instance) =>
    <String, dynamic>{
      'places': instance.places,
      'searchParams': searchParamsToJson(instance.searchParams),
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
    };
