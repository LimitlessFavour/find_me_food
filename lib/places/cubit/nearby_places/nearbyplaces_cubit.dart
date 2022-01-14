import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:find_me_food_bloc/places/models/nearby_places.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:nearby_places_repository/nearby_places_repository.dart';

part 'nearbyplaces_cubit.g.dart';
part 'nearbyplaces_state.dart';

class MissingLocationException implements Exception {}

class NearbyplacesCubit extends HydratedCubit<NearbyplacesState> {
  NearbyplacesCubit(this._nearbyPlacesRepository) : super(NearbyplacesState());

  final NearbyPlacesRepository _nearbyPlacesRepository;

  Future<void> fetchNearbyPlaces(SearchParams? searchParams) async {
    if (searchParams == null) return;

    try {
      if (searchParams.currentLocation == null) {
        throw MissingLocationException();
      }
      emit(state.copyWith(status: NearbyPlacesStatus.loading));

      final places = NearbyPlaces.fromRepository(
        await _nearbyPlacesRepository.nearbyPlaces(searchParams),
        searchParams,
      );
      emit(
        state.copyWith(
          status: NearbyPlacesStatus.success,
          searchParams: searchParams,
          nearbyPlaces: places,
        ),
      );
    } on Exception {
      emit(
        state.copyWith(status: NearbyPlacesStatus.failure),
      );
    }
  }

  @override
  NearbyplacesState fromJson(Map<String, dynamic> json) =>
      NearbyplacesState.fromJson(json);

  @override
  Map<String, dynamic> toJson(NearbyplacesState state) => state.toJson();
}
