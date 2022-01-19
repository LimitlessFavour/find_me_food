import 'package:find_me_food_bloc/places/cubit/nearby_places/nearbyplaces_cubit.dart';
import 'package:find_me_food_bloc/places/models/nearby_places.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nearby_places_repository/nearby_places_repository.dart';

import '../../helpers/hydrated_bloc.dart';

class MockNearbyPlacesRepository extends Mock
    implements NearbyPlacesRepository {}

const mockSearchParams = SearchParams.empty;

final mockPlacesList = [
  Place(name: 'first place'),
  Place(name: 'second place'),
];

final mockNearbyPlaces = NearbyPlaces(
  searchParams: mockSearchParams,
  lastUpdated: DateTime(0),
  places: mockPlacesList,
);

void main() {
  group('nearby places cubit', () {
    late MockNearbyPlacesRepository mockNearbyPlacesRepository;

    setUp(() {
      mockNearbyPlacesRepository = MockNearbyPlacesRepository();
    });

    group('initial state', () {
      test('search params is empty', () {
        mockHydratedStorage(() {
          final nearbyplacesCubit =
              NearbyplacesCubit(mockNearbyPlacesRepository);
          expect(
            nearbyplacesCubit.state.searchParams,
            SearchParams.empty,
          );
        });
      });

      test('status is correct', () {
        mockHydratedStorage(() {
          final nearbyplacesCubit =
              NearbyplacesCubit(mockNearbyPlacesRepository);
          expect(
            nearbyplacesCubit.state.status,
            NearbyPlacesStatus.initial,
          );
        });
      });

      test('nearby places is empty', () {
        mockHydratedStorage(() {
          final nearbyplacesCubit =
              NearbyplacesCubit(mockNearbyPlacesRepository);
          expect(
            nearbyplacesCubit.state.nearbyPlaces,
            NearbyPlaces.empty,
          );
        });
      });
      test('copyWith works properly', () {
        mockHydratedStorage(() {
          final nearbyplacesCubit =
              NearbyplacesCubit(mockNearbyPlacesRepository);

          final newState = nearbyplacesCubit.state.copyWith(
            searchParams: mockSearchParams,
            nearbyPlaces: mockNearbyPlaces,
          );

          expect(
            newState.nearbyPlaces,
            isA<NearbyPlaces>()
                .having(
                  (n) => n.places,
                  'places',
                  mockPlacesList,
                )
                .having(
                  (n) => n.searchParams,
                  'search parameters',
                  mockSearchParams,
                ),
          );

          expect(
            newState.searchParams,
            isA<SearchParams>()
                .having(
                  (s) => s.lastUpdatedLocation,
                  'last updated location',
                  mockSearchParams.lastUpdatedLocation,
                )
                .having(
                  (s) => s.currentLocation,
                  'current location',
                  mockSearchParams.currentLocation,
                ),
          );
        });
      });
    });

    group('toJson/fromJson', () {
      test('works properly', () {
        mockHydratedStorage(() {
          final nearbyplacesCubit =
              NearbyplacesCubit(mockNearbyPlacesRepository);
          expect(
            nearbyplacesCubit
                .fromJson(nearbyplacesCubit.toJson(nearbyplacesCubit.state)),
            nearbyplacesCubit.state,
          );
        });
      });
    });
  });
}
