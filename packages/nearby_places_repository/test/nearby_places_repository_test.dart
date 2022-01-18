import 'package:google_places_api/google_places_api.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nearby_places_repository/nearby_places_repository.dart';
import 'package:test/test.dart';

class MockNearbyPlacesApiClient extends Mock implements NearbyPlacesApiClient {}

const mockLatitude = 33.0;
const mockLongitude = -19.8;

final mockLatLng = LatLng(latitude: mockLatitude, longitude: mockLongitude);

void main() {
  group('constructor', () {
    test('does not require a placesApiClient', () {
      expect(NearbyPlacesRepository(), isNotNull);
    });
  });

  group('repository nearbylocation', () {
    late MockNearbyPlacesApiClient nearbyPlacesApiClient;
    late NearbyPlacesRepository nearbyPlacesRepository;
    late PlaceFilter mockFilter;
    late SearchParams mockSearchParams;

    setUp(() {
      nearbyPlacesApiClient = MockNearbyPlacesApiClient();
      nearbyPlacesRepository =
          NearbyPlacesRepository(placesApiClient: nearbyPlacesApiClient);
      mockFilter = PlaceFilter(
        latLng: LatLng(
          latitude: mockLatitude,
          longitude: mockLongitude,
        ),
        placeType: PlaceType.restaurant,
      );
      mockSearchParams = SearchParams(
        lastUpdatedLocation: mockLatLng,
        currentLocation: mockLatLng,
        placeFilter: mockFilter,
      );
    });

    test('nearbyPlacesFromGoogleAPI is called on fetch nearbyPlaces', () async {
      when(() => nearbyPlacesApiClient.fetchPlaces(mockFilter))
          .thenAnswer((_) async => []);

      try {
        await nearbyPlacesRepository.nearbyPlaces(mockSearchParams);
      } catch (_) {}

      verify(() => nearbyPlacesApiClient.fetchPlaces(mockFilter)).called(1);
    });
  });

}
