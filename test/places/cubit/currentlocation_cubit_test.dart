import 'package:bloc_test/bloc_test.dart';
import 'package:find_me_food_bloc/places/cubit/current_location/currentlocation_cubit.dart';
import 'package:find_me_food_bloc/places/models/models.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:location_repository/location_repository.dart'
    as location_repository;
import 'package:mocktail/mocktail.dart';

class MockLocationRepository extends Mock
    implements location_repository.LocationRepository {}

class MockPosition extends Mock implements location_repository.LocatorPosition {
}

const mockLatitude = 33.0;
const mockLongitude = -19.8;

void main() {
  group('location cubit', () {
    late location_repository.LocatorPosition position;
    late location_repository.LocationRepository locationRepository;

    setUp(() {
      position = MockPosition();
      locationRepository = MockLocationRepository();
      when(() => position.latitude).thenReturn(mockLatitude);
      when(() => position.longitude).thenReturn(mockLongitude);
      when(
        () => locationRepository.currentLocation(),
      ).thenAnswer((_) async => position);
    });

    test('initial state is correct', () {
      final locationCubit = CurrentlocationCubit(locationRepository);
      expect(locationCubit.state.status, LocationStatus.initial);
    });

    //TODOs complete tests

    group('fetch current location', () {
      blocTest<CurrentlocationCubit, CurrentlocationState>(
        'emits [loading, failure] when currentLocation throws exception',
        setUp: () {
          when(
            () => locationRepository.currentLocation(),
          ).thenThrow(Exception('random exception'));
        },
        build: () => CurrentlocationCubit(locationRepository),
        act: (cubit) => cubit.fetchCurrentLocation(),
        expect: () => <CurrentlocationState>[
          CurrentlocationState(status: LocationStatus.loading),
          CurrentlocationState(status: LocationStatus.failure),
        ],
      );

      blocTest<CurrentlocationCubit, CurrentlocationState>(
        'emits [loading, success] when currentLocation returns location',
        build: () => CurrentlocationCubit(locationRepository),
        act: (cubit) => cubit.fetchCurrentLocation(),
        expect: () => <dynamic>[
          CurrentlocationState(status: LocationStatus.loading),
          isA<CurrentlocationState>()
              .having((c) => c.status, 'status', LocationStatus.success)
              .having(
                (c) => c.location,
                'location',
                isA<Location>()
                    .having((c) => c.lastUpdated, 'lastUpdated', isNotNull)
                    .having((c) => c.latitude, 'condition', mockLatitude)
                    .having((c) => c.longitude, 'location', mockLongitude),
              ),
        ],
      );
    });
  });
}
