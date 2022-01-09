import 'package:google_places_api/google_places_api.dart';
import 'package:google_places_api/src/env.dart';
import 'package:google_places_api/src/models/models.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;

class MockHttpClient extends Mock implements http.Client {}

class MockResponse extends Mock implements http.Response {}

class FakeUri extends Fake implements Uri {}

void main() {
  group('NearbyPlacesApiClient', () {
    late http.Client httpClient;
    late NearbyPlacesApiClient nearbyPlacesApiClient;
    late String validMockResponse;

    setUpAll(() {
      registerFallbackValue(FakeUri());
      validMockResponse = '''
      {
      "html_attributions": [],
      "next_page_token": "Aap_uECVBJCY8nZXQb9ssfnK_LfkwdVQmAuGmydxymSNo70jkzXT5--voQSJ1PSddb0cMwZQRB_G7DqZ985bw3EcevtGCBw1qPyPcdKxsa2b1b-JO0IYb5-a7KHk3s89slm9GvUsKDeRV330V8RyQ54hQU5QHro3vPRAmOntBo8LGfOs7zmfqtwylJ8RBQGA91qQHwQSTzaTxC0lkQajBfVtnNZcdmbBbzbZ1Y5nv5CroyhVrYhGVNl3NaT0X-h91bUk5uAgE9kFVppAkga3YBAhAD31Ss-BVfLeTVWBPaib0UDIZ-QtR8pU8jE1lTsBYVzCVavVbYQrmUaaQTK2vrzHsGwcK-K3WQnvIkTVbkYJdo46SsTKXpJfsLuwWwwsG5ceOj3Evg7pQe912_kPaOmtLd6NKtT-7AjXpFTL0-cGJJ8KwiZO0pcwPMIgzzaMSScaOg",
      "results":
        [
          {
            "business_status": "OPERATIONAL",
            "geometry":
              {
                "location": { "lat": -33.8587323, "lng": 151.2100055 },
                "viewport":
                  {
                    "northeast":
                      { "lat": -33.85739817010727, "lng": 151.2112278798927 },
                    "southwest":
                      { "lat": -33.86009782989272, "lng": 151.2085282201073 }
                  }
              },
            "icon": "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/bar-71.png",
            "icon_background_color": "#FF9E67",
            "icon_mask_base_uri": "https://maps.gstatic.com/mapfiles/place_api/icons/v2/bar_pinlet",
            "name": "Cruise Bar",
            "opening_hours": { "open_now": false },
            "photos":
              [
                {
                  "height": 575,
                  "html_attributions":
                    [],
                  "photo_reference": "Aap_uEDnz_WTtjeSoT06mpN-Yr6NuNoGVip9P74POPIyhLv0Kvr-GORZFWiSGCAf1UnQN29IElWm3J3_KyFw1zUd7IHkVTDDjcjtMp9vQkupTQt0b-BsKLvC6MotMONrakPg4g0Nb-lzhVp8znaorp3klzcdoZJjgamJXZZn6strL82BOIxG",
                  "width": 766
                }
              ],
            "place_id": "ChIJi6C1MxquEmsR9-c-3O48ykI",
            "plus_code":
              {
                "compound_code": "46R6+G2 The Rocks, New South Wales",
                "global_code": "4RRH46R6+G2"
              },
            "price_level": 2,
            "rating": 4.1,
            "reference": "ChIJi6C1MxquEmsR9-c-3O48ykI",
            "scope": "GOOGLE",
            "types":
              ["bar", "restaurant", "food", "point_of_interest", "establishment"],
            "user_ratings_total": 1184,
            "vicinity": "Level 1, 2 and 3, Overseas Passenger Terminal, Circular Quay W, The Rocks"
          },
          {
            "business_status": "OPERATIONAL",
            "geometry":
              {
                "location": { "lat": -33.8675219, "lng": 151.2016502 },
                "viewport":
                  {
                    "northeast":
                      { "lat": -33.86615722010728, "lng": 151.2029972798927 },
                    "southwest":
                      { "lat": -33.86885687989272, "lng": 151.2002976201072 }
                  }
              },
            "icon": "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/generic_business-71.png",
            "icon_background_color": "#7B9EB0",
            "icon_mask_base_uri": "https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/generic_pinlet",
            "name": "Sydney Harbour Dinner Cruises",
            "opening_hours": { "open_now": false },
            "photos":
              [
                {
                  "height": 749,
                  "html_attributions":
                    [],
                  "photo_reference": "Aap_uEAwz7yKBwe_TCgQybaDURKMwb6Y9OKhoeERGN1Ziqs5KzsQGwBYfdfwCqV8GdEfUAvb_PhQrvYpivvqvSg1rfGr4_CXiTuD2fH5-NYCyJLSYStDVy9ND7Ozo_s0vcWwAhhG2eyOixnyDW7LRCQZoJEs1nt1AG5L-AZpNY04k8CI0qr_",
                  "width": 1000
                }
              ],
            "place_id": "ChIJM1mOVTS6EmsRKaDzrTsgids",
            "plus_code":
              {
                "compound_code": "46J2+XM Sydney, New South Wales",
                "global_code": "4RRH46J2+XM"
              },
            "rating": 4.7,
            "reference": "ChIJM1mOVTS6EmsRKaDzrTsgids",
            "scope": "GOOGLE",
            "types":
              [
                "tourist_attraction",
                "travel_agency",
                "restaurant",
                "food",
                "point_of_interest",
                "establishment"
              ],
            "user_ratings_total": 6,
            "vicinity": "32 The Promenade, Sydney"
          }
        ],
      "status": "OK"
    }
      ''';
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
                .having((p) => p.openingHours?.openNow, 'open_now', false));
      });
    });
    // test('adds one to input values', () {});
  });
}
