import 'package:bloc/bloc.dart';
// import 'package:google_places_api/google_places_api.dart'
//     show NearbyPlacesRe;
import 'package:meta/meta.dart';


part 'nearbyplaces_state.dart';

class NearbyplacesCubit extends Cubit<NearbyplacesState> {
  NearbyplacesCubit() : super(NearbyplacesInitial());
  // NearbyplacesCubit(this._locationRepository) : super(NearbyplacesInitial());

  // final NearbyP _locationRepository;

}
