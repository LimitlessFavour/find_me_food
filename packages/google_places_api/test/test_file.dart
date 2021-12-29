// // import 'package:geolocator/geolocator.dart';
// import 'package:location_repository/location_repository.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:test/test.dart';

// // class MockedGeolocator extends Mock implements Geolocator {}

// void main() {
//   group('Location repository tests', () {
//     late LocationRepository locationRepository;

//     setUp(() {
//       locationRepository = LocationRepository();
//     });

//     test('currentLocation returns position when service enabled', () async {
//       // when(() => Geolocator.isLocationServiceEnabled()).thenAnswer((invocation) => Future.value(true));

//       // final response = await locationRepository.currentLocation();

//       // expect(response, isA<Position>());
//     });

//     test(
//         'currentLocation throws a LocationDisabledFailure exception when service disabled',
//         () async {
//       // when(() => Geolocator.isLocationServiceEnabled()).thenAnswer((invocation) => Future.value(false));
//       // expect(
//       //   () async => await locationRepository.currentLocation(),
//       //   throwsA(LocationDisabledFailure()),
//       // );
//     });
//   });
// }
