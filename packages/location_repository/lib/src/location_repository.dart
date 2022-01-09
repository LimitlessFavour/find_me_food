import 'package:geolocator/geolocator.dart';
import 'package:location_repository/src/models/position.dart';

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

  Future<LocatorPosition> currentLocation({
    LocationAccuracy locationAccuracy = LocationAccuracy.high,
  }) async {
    LocatorPosition position;
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

  Future<bool> isLocationServiceEnabled() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  Future<LocationPermission> checkPermission() async {
    return await Geolocator.checkPermission();
  }

  Future<LocationPermission> requestPermission() async {
    return await Geolocator.requestPermission();
  }

  Future<LocatorPosition> getCurrentPosition(LocationAccuracy accuracy) async {
    return LocatorPosition.fromPosition(
        await Geolocator.getCurrentPosition(desiredAccuracy: accuracy));
  }
}
