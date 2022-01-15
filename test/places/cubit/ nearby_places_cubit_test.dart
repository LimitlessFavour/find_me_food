import 'package:find_me_food_bloc/places/cubit/nearby_places/nearbyplaces_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nearby_places_repository/nearby_places_repository.dart'
    as nearby_places_repository;

import '../../helpers/hydrated_bloc.dart';

class MockNearbyPlacesRepository extends Mock
    implements nearby_places_repository.NearbyPlacesRepository {}

void main() {
  group('nearby places cubit', () {
    late MockNearbyPlacesRepository mockNearbyPlacesRepository;

    setUp(() {
      mockNearbyPlacesRepository = MockNearbyPlacesRepository();
    });

    test('initial state is idle', () {
      // expect(nearbyplacesCubit.state, NearbyplacesState());
      mockHydratedStorage(() {
        final nearbyplacesCubit = NearbyplacesCubit(mockNearbyPlacesRepository);
        expect(nearbyplacesCubit.state, NearbyplacesState());

// expect(actual, matcher)
      });
    });
  });
}
