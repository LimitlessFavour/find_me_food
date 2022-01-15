import 'package:find_me_food_bloc/places/cubit/nearby_places/nearbyplaces_cubit.dart';
import 'package:find_me_food_bloc/places/models/nearby_places.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nearby_places_repository/nearby_places_repository.dart';

import '../../helpers/hydrated_bloc.dart';

class MockNearbyPlacesRepository extends Mock
    implements NearbyPlacesRepository {}

final mockSearchParams = SearchParams(
  lastUpdatedLocation: null,
  currentLocation: null,
  placeFilter: PlaceFilter(
    placeType: PlaceType.restaurant,
    latLng: null,
  ),
);

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
    });

    test('copyWith works properly', () {
      mockHydratedStorage(() {
        final nearbyplacesCubit = NearbyplacesCubit(mockNearbyPlacesRepository);

        nearbyplacesCubit.state
            .copyWith(searchParams: mockSearchParams)
            .copyWith(nearbyPlaces: mockNearbyPlaces);

        expect(
          nearbyplacesCubit.state.nearbyPlaces,
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
      });
    });
  });
}
