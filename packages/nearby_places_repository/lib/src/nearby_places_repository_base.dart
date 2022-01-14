import 'package:google_places_api/google_places_api.dart';
import 'package:nearby_places_repository/nearby_places_repository.dart';

/// Exception thrown when no places are found.
class NearbyPlacesNotFound implements Exception {}
/// Exception thrown when either or both locations are null
class NullSearchLocation implements Exception {}


class NearbyPlacesRepository {
  NearbyPlacesRepository({NearbyPlacesApiClient? placesApiClient})
      : _placesApiClient = placesApiClient ?? NearbyPlacesApiClient();

  final NearbyPlacesApiClient _placesApiClient;

  Future<List<Place>> nearbyPlaces(SearchParams searchParams) async {
      return await nearbyPlacesFromGoogleAPI(searchParams.placeFilter);
  }

  Future<List<Place>> nearbyPlacesFromGoogleAPI(PlaceFilter filter) async {
    List<Place> nearbyPlaces = await _placesApiClient.fetchPlaces(filter);
    return nearbyPlaces;
  }
}

