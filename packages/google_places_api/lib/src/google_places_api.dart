// ignore_for_file: public_member_api_docs

import 'dart:convert';
import 'package:google_places_api/src/env.dart';
import 'package:google_places_api/src/models/models.dart';
import 'package:http/http.dart' as http;


/// Exception thrown when getNearbyPlaces fails.
class NearbyPlacesRequestFailure implements Exception {
  NearbyPlacesRequestFailure(this.reasonPhrase);
  final String? reasonPhrase;
}

/// Exception thrown when weather for provided location is not found.
class NearbyPlacesNotFoundFailure implements Exception {}

class NearbyPlacesApiClient {
  NearbyPlacesApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;
  static const _baseUrl = 'www.maps.googleapis.com';

  Future<List<Place>> fetchPlaces(PlaceFilter filter) async {
    final placesRequest = Uri.https(
      _baseUrl,
      '/maps/api/place/nearbysearch/json',
      <String, String>{
        'location': '${filter.latLng?.latitude},${filter.latLng?.longitude}',
        'radius': filter.radius.toString(),
        'type': filter.placeType.name,
        //add your key in here
        // create in a file env.dart in lib/src and add your google places api key to the first line:
        //const String googleApiKey = '<API_KEY_HERE>';
        'key': googleApiKey,
      },
    );
    final placesResponse = await _httpClient.get(placesRequest);

    if (placesResponse.statusCode != 200) {
      throw NearbyPlacesRequestFailure(placesResponse.reasonPhrase);
    }

    final placesJson = json.decode(placesResponse.body) as Map<String, dynamic>;
    final places = NearbyPlacesResults.fromJson(placesJson).places;
    if (places.isEmpty) {
      throw NearbyPlacesNotFoundFailure();
    }
    return places;
  }
}

