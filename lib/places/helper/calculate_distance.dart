import 'dart:math';
import 'package:find_me_food_bloc/places/cubit/nearby_places/nearbyplaces_cubit.dart';
import 'package:google_places_api/google_places_api.dart';
import 'package:nearby_places_repository/nearby_places_repository.dart';

/// retunrs the distance between two LatLng positions.
double distanceBetween(LatLng firstLocation, LatLng newLocation) {
  return calculateDistance(
    firstLocation.latitude,
    firstLocation.longitude,
    newLocation.latitude,
    newLocation.longitude,
  );
}

/// calculates ths [distance] between two LatLng coordinates
double calculateDistance(lat1, lon1, lat2, lon2) {
  var p = 0.017453292519943295;
  var c = cos;
  var a = 0.5 -
      c((lat2 - lat1) * p) / 2 +
      c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
  return 12742 * asin(sqrt(a));
}

extension SearchParamsX on SearchParams {
  /// will update places if user [forcesRefresh] or if the user has moved more
  /// than [distance] meters away from the last position the locations got updated
  bool get shouldUpdateLocations {
    if (lastUpdatedLocation == null || currentLocation == null) {
      throw MissingLocationException();
    }
    return distanceBetween(lastUpdatedLocation!, currentLocation!) >
            this.searchDistance ||
        this.forceRefresh;
  }
}



// extension on LatLng {
//   /// retunrs the distance between both LatLng positions.
//   double distanceBetween(LatLng newLocation) {
//     return calculateDistance(
//       latitude,
//       longitude,
//       newLocation.latitude,
//       newLocation.longitude,
//     );
//   }
// }
