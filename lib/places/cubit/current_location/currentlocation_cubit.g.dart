// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'currentlocation_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentlocationState _$CurrentlocationStateFromJson(Map<String, dynamic> json) {
  return CurrentlocationState(
    status: _$enumDecode(_$LocationStatusEnumMap, json['status']),
    location: json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CurrentlocationStateToJson(
        CurrentlocationState instance) =>
    <String, dynamic>{
      'status': _$LocationStatusEnumMap[instance.status],
      'location': instance.location,
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

const _$LocationStatusEnumMap = {
  LocationStatus.initial: 'initial',
  LocationStatus.loading: 'loading',
  LocationStatus.success: 'success',
  LocationStatus.failure: 'failure',
};
