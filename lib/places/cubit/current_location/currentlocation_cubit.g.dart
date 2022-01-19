// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'currentlocation_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentlocationState _$CurrentlocationStateFromJson(
        Map<String, dynamic> json) =>
    CurrentlocationState(
      status: $enumDecodeNullable(_$LocationStatusEnumMap, json['status']) ??
          LocationStatus.initial,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrentlocationStateToJson(
        CurrentlocationState instance) =>
    <String, dynamic>{
      'status': _$LocationStatusEnumMap[instance.status],
      'location': instance.location,
    };

const _$LocationStatusEnumMap = {
  LocationStatus.initial: 'initial',
  LocationStatus.loading: 'loading',
  LocationStatus.success: 'success',
  LocationStatus.failure: 'failure',
};
