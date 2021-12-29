// import 'package:geolocator/geolocator.dart';

// /// Exception thrown when location services are disabled.
// class LocationDisabledFailure implements Exception {}

// /// Exception thrown when location permissions are not granted.
// class LocationPermissionsNotGrantedFailure implements Exception {}

// /// Exception thrown when location permissions are denied forever.
// class LocationPermissionsDeniedFailure implements Exception {}

// // /// Exception thrown when the current location is not found.
// // class LocationNotFoundFailure implements Exception {}

// class LocationRepository {
//   LocationRepository({LocationAccuracy? locationAccuracy})
//       : _locationAccuracy = locationAccuracy ?? LocationAccuracy.high;

//   final LocationAccuracy _locationAccuracy;

//   Future<Position> currentLocation() async {
//     Position position;
//     bool serviceEnabled;
//     LocationPermission permission;

//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       throw LocationDisabledFailure();
//     }

//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         throw LocationPermissionsNotGrantedFailure();
//       }
//     }

//     if (permission == LocationPermission.deniedForever) {
//       // Permissions are denied forever, handle appropriately.
//       throw LocationDisabledFailure();
//     }

//     position =
//         await Geolocator.getCurrentPosition(desiredAccuracy: _locationAccuracy);
//     return position;
//   }
// }
