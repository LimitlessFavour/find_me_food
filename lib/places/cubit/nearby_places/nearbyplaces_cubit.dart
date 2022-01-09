import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'nearbyplaces_state.dart';

class NearbyplacesCubit extends Cubit<NearbyplacesState> {
  NearbyplacesCubit() : super(NearbyplacesInitial());
}
