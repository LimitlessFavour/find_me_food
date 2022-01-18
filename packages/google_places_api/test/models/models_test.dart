import 'dart:convert';

import 'package:google_places_api/google_places_api.dart';
import 'package:google_places_api/src/models/models.dart';
import 'package:test/test.dart';

import '../helpers/json_responses.dart';
void main() {
      group('toJson/fromJson', () {
      test('PlaceFilter works properly', () {
        final mockFilter = PlaceFilter(
          latLng: LatLng(latitude: 10, longitude: -10),
          placeType: PlaceType.restaurant,
        );
        expect(
          PlaceFilter.fromJson(mockFilter.toJson()),
          mockFilter,
        );
      });

      test('NearbyPlaces works properly', () {
        NearbyPlacesResults mockPlaces =
            NearbyPlacesResults.fromJson(jsonDecode(validMockResponse));
        expect(
          NearbyPlacesResults.fromJson(mockPlaces.toJson()),
          mockPlaces,
        );
      });

      test('Place works properly', () {
        final mockPlace = Place.fromJson(jsonDecode(mockPlaceResponse));
        expect(
          Place.fromJson(mockPlace.toJson()),
          mockPlace,
        );
      });

      test('OpeningHours works properly', () {
        final mockOpeningHours = OpeningHours.fromJson(
            jsonDecode(mockPlaceResponse)['opening_hours']);
        expect(
          OpeningHours.fromJson(mockOpeningHours.toJson()),
          mockOpeningHours,
        );
      });

      test('Geometry works properly', () {
        final mockGeometry =
            Geometry.fromJson(jsonDecode(mockPlaceResponse)['geometry']);
        expect(
          Geometry.fromJson(mockGeometry.toJson()),
          mockGeometry,
        );
      });

      test('Location works properly', () {
        final mockLocation = LatLng.fromJson(
            jsonDecode(mockPlaceResponse)['geometry']['location']);
        expect(
          LatLng.fromJson(mockLocation.toJson()),
          mockLocation,
        );
      });

      test('Photo works properly', () {
        final mockPhotos =
            Photo.fromJson(jsonDecode(mockPlaceResponse)['photos'][0]);
        expect(
          Photo.fromJson(mockPhotos.toJson()),
          mockPhotos,
        );
      });
    });
}
