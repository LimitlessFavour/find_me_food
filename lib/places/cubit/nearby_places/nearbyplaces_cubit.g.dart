// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'nearbyplaces_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NearbyplacesState _$$_NearbyplacesStateFromJson(Map<String, dynamic> json) =>
    _$_NearbyplacesState(
      searchParams: json['searchParams'] == null
          ? SearchParams.empty
          : SearchParams.fromJson(json['searchParams'] as Map<String, dynamic>),
      status:
          $enumDecodeNullable(_$NearbyPlacesStatusEnumMap, json['status']) ??
              NearbyPlacesStatus.initial,
      nearbyPlaces: json['nearbyPlaces'] == null
          ? NearbyPlaces.empty
          : NearbyPlaces.fromJson(json['nearbyPlaces'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NearbyplacesStateToJson(
        _$_NearbyplacesState instance) =>
    <String, dynamic>{
      'searchParams': searchParamsToJson(instance.searchParams),
      'status': _$NearbyPlacesStatusEnumMap[instance.status],
      'nearbyPlaces': nearbyPlacesToJson(instance.nearbyPlaces),
    };

const _$NearbyPlacesStatusEnumMap = {
  NearbyPlacesStatus.initial: 'initial',
  NearbyPlacesStatus.loading: 'loading',
  NearbyPlacesStatus.success: 'success',
  NearbyPlacesStatus.failure: 'failure',
};
