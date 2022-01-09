// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NearbyPlacesResults _$_$_NearbyPlacesResultsFromJson(
    Map<String, dynamic> json) {
  return _$_NearbyPlacesResults(
    status: json['status'] as String? ?? '',
    nextPageToken: json['next_page_token'] as String?,
    places: (json['results'] as List<dynamic>)
        .map((e) => Place.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_NearbyPlacesResultsToJson(
        _$_NearbyPlacesResults instance) =>
    <String, dynamic>{
      'status': instance.status,
      'next_page_token': instance.nextPageToken,
      'results': instance.places,
    };

_$_Place _$_$_PlaceFromJson(Map<String, dynamic> json) {
  return _$_Place(
    name: json['name'] as String? ?? '',
    openingHours: json['opening_hours'] == null
        ? null
        : OpeningHours.fromJson(json['opening_hours'] as Map<String, dynamic>),
    geometry: json['geometry'] == null
        ? null
        : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
    photos: (json['photos'] as List<dynamic>)
        .map((e) => Photos.fromJson(e as Map<String, dynamic>))
        .toList(),
    placeId: json['place_id'] as String?,
    rating: json['rating'],
    types:
        (json['types'] as List<dynamic>?)?.map((e) => e as String).toList() ??
            [],
    userRatingsTotal: json['user_ratings_total'],
    vicinity: json['vicinity'] as String?,
  );
}

Map<String, dynamic> _$_$_PlaceToJson(_$_Place instance) => <String, dynamic>{
      'name': instance.name,
      'opening_hours': instance.openingHours,
      'geometry': instance.geometry,
      'photos': instance.photos,
      'place_id': instance.placeId,
      'rating': instance.rating,
      'types': instance.types,
      'user_ratings_total': instance.userRatingsTotal,
      'vicinity': instance.vicinity,
    };

_$_OpeningHours _$_$_OpeningHoursFromJson(Map<String, dynamic> json) {
  return _$_OpeningHours(
    openNow: json['open_now'] as bool,
  );
}

Map<String, dynamic> _$_$_OpeningHoursToJson(_$_OpeningHours instance) =>
    <String, dynamic>{
      'open_now': instance.openNow,
    };

_$_Geometry _$_$_GeometryFromJson(Map<String, dynamic> json) {
  return _$_Geometry(
    location: json['location'] == null
        ? null
        : LatLng.fromJson(json['location'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_GeometryToJson(_$_Geometry instance) =>
    <String, dynamic>{
      'location': instance.location,
    };

_$_Photos _$_$_PhotosFromJson(Map<String, dynamic> json) {
  return _$_Photos(
    height: json['height'],
    photoReference: json['photo_reference'] as String?,
    width: json['width'],
  );
}

Map<String, dynamic> _$_$_PhotosToJson(_$_Photos instance) => <String, dynamic>{
      'height': instance.height,
      'photo_reference': instance.photoReference,
      'width': instance.width,
    };
