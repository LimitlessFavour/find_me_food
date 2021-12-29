import 'package:geolocator/geolocator.dart';

/// Exception thrown when location services are disabled.
class LocationDisabledFailure implements Exception {}

/// Exception thrown when location permissions are not granted.
class LocationPermissionsNotGrantedFailure implements Exception {}

/// Exception thrown when location permissions are denied forever.
class LocationPermissionsDeniedFailure implements Exception {}

// /// Exception thrown when the current location is not found.
// class LocationNotFoundFailure implements Exception {}

class LocationRepository {
  LocationRepository({Locator? locator})
      : _locator = locator ?? const Locator();

  final Locator _locator;

  Future<Position> currentLocation({
    LocationAccuracy locationAccuracy = LocationAccuracy.high,
  }) async {
    Position position;
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await _locator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw LocationDisabledFailure();
    }

    permission = await _locator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await _locator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw LocationPermissionsNotGrantedFailure();
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      throw LocationDisabledFailure();
    }

    position = await _locator.getCurrentPosition(locationAccuracy);
    return position;
  }
}

class Locator {
  const Locator();

  Future<bool> isLocationServiceEnabled(){
    return  Geolocator.isLocationServiceEnabled();
  }

  Future<LocationPermission> checkPermission() {
    return Geolocator.checkPermission();
  }

  Future<LocationPermission> requestPermission() {
    return Geolocator.requestPermission();
  }

  Future<Position> getCurrentPosition(LocationAccuracy accuracy) async{
    return await Geolocator.getCurrentPosition(desiredAccuracy: accuracy);
  }
}
