import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:find_me_food_bloc/places/models/location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location_repository/location_repository.dart'
    show LocationRepository;
part 'currentlocation_cubit.g.dart';
part 'currentlocation_state.dart';

class CurrentlocationCubit extends Cubit<CurrentlocationState> {
  CurrentlocationCubit(this._locationRepository)
      : super(CurrentlocationInitial());

  final LocationRepository _locationRepository;

    Future<void> fetchCurrentLocation() async {
    emit(state.copyWith(status: LocationStatus.loading));

    try {
      final location = Location.fromRepository(
        await _locationRepository.currentLocation(),
      );

      emit(
        state.copyWith(
          status: LocationStatus.success,
          location: location,
        ),
      );
    } on Exception {
      emit(state.copyWith(status: LocationStatus.failure));
    }
  }
}
