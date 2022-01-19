// ignore_for_file: lines_longer_than_80_chars

part of 'nearbyplaces_cubit.dart';

@JsonEnum()
enum NearbyPlacesStatus {
  initial,
  loading,
  success,
  failure,
}

extension NearbyPlacesStatusX on NearbyPlacesStatus {
  bool get isInitial => this == NearbyPlacesStatus.initial;
  bool get isLoading => this == NearbyPlacesStatus.loading;
  bool get isSuccess => this == NearbyPlacesStatus.success;
  bool get isFailure => this == NearbyPlacesStatus.failure;
}

@freezed
class NearbyplacesState with _$NearbyplacesState {
  const factory NearbyplacesState({
    @Default(SearchParams.empty)
    @JsonKey(toJson: searchParamsToJson)
        SearchParams? searchParams,
    @Default(NearbyPlacesStatus.initial) NearbyPlacesStatus? status,
    @Default(NearbyPlaces.empty)
    @JsonKey(toJson: nearbyPlacesToJson)
        NearbyPlaces? nearbyPlaces,
  }) = _NearbyplacesState;

  factory NearbyplacesState.fromJson(Map<String, dynamic> json) =>
      _$NearbyplacesStateFromJson(json);
}

Map<String, dynamic>? nearbyPlacesToJson(NearbyPlaces? nearbyPlaces) {
  return nearbyPlaces?.toJson();
}


// @JsonSerializable()
// class NearbyplacesState extends Equatable {
//   NearbyplacesState({
//     SearchParams? searchParams,
//     NearbyPlacesStatus? status,
//     NearbyPlaces? nearbyPlaces,
//   })  : searchParams = searchParams ?? SearchParams.empty,
//         status = status ?? NearbyPlacesStatus.initial,
//         nearbyPlaces = nearbyPlaces ?? NearbyPlaces.empty;

//   factory NearbyplacesState.fromJson(Map<String, dynamic> json) =>
//       _$NearbyplacesStateFromJson(json);

//   final SearchParams? searchParams;
//   final NearbyPlacesStatus status;
//   final NearbyPlaces nearbyPlaces;

//   NearbyplacesState copyWith({
//     SearchParams? searchParams,
//     NearbyPlacesStatus? status,
//     NearbyPlaces? nearbyPlaces,
//   }) {
//     return NearbyplacesState(
//       status: status ?? this.status,
//       searchParams: searchParams ?? this.searchParams,
//       nearbyPlaces: nearbyPlaces ?? this.nearbyPlaces,
//     );
//   }

//   Map<String, dynamic> toJson() => _$NearbyplacesStateToJson(this);

//   @override
//   List<Object?> get props => [searchParams, status];
// }
