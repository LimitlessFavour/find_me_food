// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NearbyPlacesResults _$$_NearbyPlacesResultsFromJson(
        Map<String, dynamic> json) =>
    _$_NearbyPlacesResults(
      status: json['status'] as String? ?? '',
      nextPageToken: json['next_page_token'] as String?,
      places: (json['results'] as List<dynamic>?)
              ?.map((e) => Place.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_NearbyPlacesResultsToJson(
        _$_NearbyPlacesResults instance) =>
    <String, dynamic>{
      'status': instance.status,
      'next_page_token': instance.nextPageToken,
      'results': toJsonPlaces(instance.places),
    };

_$_Place _$$_PlaceFromJson(Map<String, dynamic> json) => _$_Place(
      name: json['name'] as String? ?? '',
      openingHours: json['opening_hours'] == null
          ? null
          : OpeningHours.fromJson(
              json['opening_hours'] as Map<String, dynamic>),
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      placeId: json['place_id'] as String?,
      rating: json['rating'] ?? 0,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      userRatingsTotal: json['user_ratings_total'] ?? 0,
      vicinity: json['vicinity'] as String?,
    );

Map<String, dynamic> _$$_PlaceToJson(_$_Place instance) => <String, dynamic>{
      'name': instance.name,
      'opening_hours': openingHoursToJson(instance.openingHours),
      'geometry': geometryToJson(instance.geometry),
      'photos': toJsonPhotos(instance.photos),
      'place_id': instance.placeId,
      'rating': instance.rating,
      'types': instance.types,
      'user_ratings_total': instance.userRatingsTotal,
      'vicinity': instance.vicinity,
    };

_$_OpeningHours _$$_OpeningHoursFromJson(Map<String, dynamic> json) =>
    _$_OpeningHours(
      openNow: json['open_now'] as bool? ?? false,
    );

Map<String, dynamic> _$$_OpeningHoursToJson(_$_OpeningHours instance) =>
    <String, dynamic>{
      'open_now': instance.openNow,
    };

_$_Geometry _$$_GeometryFromJson(Map<String, dynamic> json) => _$_Geometry(
      location: json['location'] == null
          ? null
          : LatLng.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GeometryToJson(_$_Geometry instance) =>
    <String, dynamic>{
      'location': locationToJson(instance.location),
    };

_$_Photo _$$_PhotoFromJson(Map<String, dynamic> json) => _$_Photo(
      height: json['height'] ?? 0,
      photoReference: json['photo_reference'] as String?,
      width: json['width'] ?? 0,
    );

Map<String, dynamic> _$$_PhotoToJson(_$_Photo instance) => <String, dynamic>{
      'height': instance.height,
      'photo_reference': instance.photoReference,
      'width': instance.width,
    };
