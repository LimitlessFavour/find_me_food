import 'dart:convert';

import 'package:google_places_api/google_places_api.dart';
import 'package:google_places_api/src/env.dart';
import 'package:google_places_api/src/models/models.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;

import 'helpers/json_responses.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockResponse extends Mock implements http.Response {}

class FakeUri extends Fake implements Uri {}

void main() {
  group('NearbyPlacesApiClient', () {
    late http.Client httpClient;
    late NearbyPlacesApiClient nearbyPlacesApiClient;

    setUpAll(() {
      registerFallbackValue(FakeUri());
    });

    setUp(() {
      httpClient = MockHttpClient();
      nearbyPlacesApiClient = NearbyPlacesApiClient(httpClient: httpClient);
    });

    group('constructor', () {
      test('does not require an httpClient', () {
        expect(NearbyPlacesApiClient(), isNotNull);
      });
    });

    group('nearby places search', () {
      final mockFilter = PlaceFilter(
        latLng: LatLng(latitude: 10, longitude: -10),
        placeType: PlaceType.restaurant,
      );

      test('makes correct http request', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('[]');
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        try {
          await nearbyPlacesApiClient.fetchPlaces(mockFilter);
        } catch (_) {}
        verify(
          () => httpClient.get(
            Uri.https(
              'www.maps.googleapis.com',
              '/maps/api/place/nearbysearch/json',
              <String, String>{
                'location':
                    '${mockFilter.latLng?.latitude},${mockFilter.latLng?.longitude}',
                'radius': mockFilter.radius.toString(),
                'type': mockFilter.placeType.name,
                'key': googleApiKey,
              },
            ),
          ),
        ).called(1);
      });

      test('throws NearbyPlacesRequestFailure on non-200 response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(400);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        expect(
          () async => await nearbyPlacesApiClient.fetchPlaces(mockFilter),
          throwsA(isA<NearbyPlacesRequestFailure>()),
        );
      });

      test('throws NearbyPlacesNotFoundFailure on empty response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('''
        {
              "html_attributions": [],
              "next_page_token": "Aap_uECVBJCY8nZXQb9ssfnK_LfkwdVQmAuGmydxymSNo70jkzXT5--voQSJ1PSddb0cMwZQRB_G7DqZ985bw3EcevtGCBw1qPyPcdKxsa2b1b-JO0IYb5-a7KHk3s89slm9GvUsKDeRV330V8RyQ54hQU5QHro3vPRAmOntBo8LGfOs7zmfqtwylJ8RBQGA91qQHwQSTzaTxC0lkQajBfVtnNZcdmbBbzbZ1Y5nv5CroyhVrYhGVNl3NaT0X-h91bUk5uAgE9kFVppAkga3YBAhAD31Ss-BVfLeTVWBPaib0UDIZ-QtR8pU8jE1lTsBYVzCVavVbYQrmUaaQTK2vrzHsGwcK-K3WQnvIkTVbkYJdo46SsTKXpJfsLuwWwwsG5ceOj3Evg7pQe912_kPaOmtLd6NKtT-7AjXpFTL0-cGJJ8KwiZO0pcwPMIgzzaMSScaOg",
              "results": []
        }
        ''');
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        await expectLater(
          nearbyPlacesApiClient.fetchPlaces(mockFilter),
          throwsA(isA<NearbyPlacesNotFoundFailure>()),
        );
      });

      test('returns place on valid response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn(validMockResponse);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        final place =
            (await nearbyPlacesApiClient.fetchPlaces(mockFilter)).first;
        expect(
          place,
          isA<Place>()
              .having((p) => p.name, 'name', 'Cruise Bar')
              .having(
                  (p) => p.placeId, 'place_id', "ChIJi6C1MxquEmsR9-c-3O48ykI")
              .having(
                (p) => p.geometry?.location,
                'latLng',
                isA<LatLng>()
                    .having((c) => c.latitude, 'latitude', -33.8587323)
                    .having((c) => c.longitude, 'longitude', 151.2100055),
              )
              .having((p) => p.openingHours?.openNow, 'open_now', false),
        );
      });
    });
  });
}
