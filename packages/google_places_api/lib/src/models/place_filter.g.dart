// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceFilter _$_$_PlaceFilterFromJson(Map<String, dynamic> json) {
  return _$_PlaceFilter(
    latLng: json['lat_lng'] == null
        ? null
        : LatLng.fromJson(json['lat_lng'] as Map<String, dynamic>),
    placeType: _$enumDecode(_$PlaceTypeEnumMap, json['place_type']),
    radius: (json['radius'] as num?)?.toDouble() ?? 20000,
  );
}

Map<String, dynamic> _$_$_PlaceFilterToJson(_$_PlaceFilter instance) =>
    <String, dynamic>{
      'lat_lng': instance.latLng,
      'place_type': _$PlaceTypeEnumMap[instance.placeType],
      'radius': instance.radius,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$PlaceTypeEnumMap = {
  PlaceType.restaurant: 'restaurant',
  PlaceType.night_club: 'night_club',
  PlaceType.bakery: 'bakery',
  PlaceType.bar: 'bar',
  PlaceType.meal_delivery: 'meal_delivery',
  PlaceType.meal_takeaway: 'meal_takeaway',
  PlaceType.cafe: 'cafe',
  PlaceType.pharmacy: 'pharmacy',
  PlaceType.liquor_store1: 'liquor_store1',
};

_$_LatLng _$_$_LatLngFromJson(Map<String, dynamic> json) {
  return _$_LatLng(
    latitude: (json['lat'] as num).toDouble(),
    longitude: (json['lng'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_LatLngToJson(_$_LatLng instance) => <String, dynamic>{
      'lat': instance.latitude,
      'lng': instance.longitude,
    };
