// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'nearbyplaces_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NearbyplacesState _$NearbyplacesStateFromJson(Map<String, dynamic> json) {
  return NearbyplacesState(
    searchParams: json['searchParams'] == null
        ? null
        : SearchParams.fromJson(json['searchParams'] as Map<String, dynamic>),
    status: _$enumDecodeNullable(_$NearbyPlacesStatusEnumMap, json['status']),
    nearbyPlaces: json['nearbyPlaces'] == null
        ? null
        : NearbyPlaces.fromJson(json['nearbyPlaces'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$NearbyplacesStateToJson(NearbyplacesState instance) =>
    <String, dynamic>{
      'searchParams': instance.searchParams,
      'status': _$NearbyPlacesStatusEnumMap[instance.status],
      'nearbyPlaces': instance.nearbyPlaces,
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

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$NearbyPlacesStatusEnumMap = {
  NearbyPlacesStatus.initial: 'initial',
  NearbyPlacesStatus.loading: 'loading',
  NearbyPlacesStatus.success: 'success',
  NearbyPlacesStatus.failure: 'failure',
};
