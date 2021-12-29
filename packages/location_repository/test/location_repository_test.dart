import 'package:geolocator/geolocator.dart';
import 'package:location_repository/location_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockedGeolocator extends Mock implements Locator {}

void main() {
  group('repository currentLocation', () {
    late LocationRepository locationRepository;
    late MockedGeolocator mockedLocator;

    late Position mockedPosition;

    setUpAll(() {
      mockedLocator = MockedGeolocator();
      locationRepository = LocationRepository(locator: mockedLocator);
      mockedPosition = Position(
        longitude: 10.98,
        latitude: 30.43,
        timestamp: DateTime.now(),
        accuracy: 5.0,
        altitude: 100.0,
        heading: 10.0,
        speed: 32.0,
        speedAccuracy: 10.0,
        isMocked: true,
      );
    });

    test('throws LocationDisabledFailure when location service is disabled',
        () {
      when(() => mockedLocator.isLocationServiceEnabled())
          .thenAnswer((_) async => false);

      expect(() async => await locationRepository.currentLocation(),
          throwsA(isA<LocationDisabledFailure>()));
    });

    group('location service is enabled', () {
      setUp(() {
        when(() => mockedLocator.isLocationServiceEnabled())
            .thenAnswer((_) async => true);
      });

      test('returns position when user approves', () async {
        when(() => mockedLocator.requestPermission())
            .thenAnswer((_) async => LocationPermission.always);
        when(() => mockedLocator.checkPermission())
            .thenAnswer((_) async => LocationPermission.whileInUse);
        when(() => mockedLocator.getCurrentPosition(LocationAccuracy.high))
            .thenAnswer((_) async => mockedPosition);

        final response = await locationRepository.currentLocation();

        expect(response, isA<Position>());
      });

      test('throws PermissionsNotGranted when user denies', () {
        when(() => mockedLocator.checkPermission())
            .thenAnswer((_) async => LocationPermission.denied);
        when(() => mockedLocator.requestPermission())
            .thenAnswer((_) async => LocationPermission.denied);
        when(() => mockedLocator.getCurrentPosition(LocationAccuracy.high))
            .thenAnswer((_) async => mockedPosition);

        expect(
          () async => await locationRepository.currentLocation(),
          throwsA(isA<LocationPermissionsNotGrantedFailure>()),
        );
      });

      test('throws LocationDisabledFailure when user denies permanently', () {
        when(() => mockedLocator.checkPermission())
            .thenAnswer((invocation) async => LocationPermission.deniedForever);

        expect(() async => await locationRepository.currentLocation(),
            throwsA(isA<LocationDisabledFailure>()));
      });
    });
  });
}
