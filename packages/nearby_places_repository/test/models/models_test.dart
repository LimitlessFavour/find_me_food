import 'package:google_places_api/google_places_api.dart';
import 'package:nearby_places_repository/nearby_places_repository.dart';
import 'package:test/test.dart';

void main() {
  late PlaceFilter mockFilter;

  setUpAll(() {
    mockFilter = PlaceFilter(
      latLng: LatLng(latitude: 10, longitude: -10),
      placeType: PlaceType.restaurant,
    );
  });


    group('toJson/fromJson', () {
      test('SearchParams works properly', () {
        final mockSearchParams = SearchParams(
          lastUpdatedLocation: mockFilter.latLng,
          currentLocation: mockFilter.latLng,
          placeFilter: mockFilter,
        );
        expect(SearchParams.fromJson(SearchParams.empty.toJson()),
            SearchParams.empty);
        expect(
          SearchParams.fromJson(mockSearchParams.toJson()),
          mockSearchParams,
        );
      });
    });
}
