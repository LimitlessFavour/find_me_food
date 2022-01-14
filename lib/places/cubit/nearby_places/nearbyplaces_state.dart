part of 'nearbyplaces_cubit.dart';

enum NearbyPlacesStatus { initial, loading, success, failure }

extension NearbyPlacesStatusX on NearbyPlacesStatus {
  bool get isInitial => this == NearbyPlacesStatus.initial;
  bool get isLoading => this == NearbyPlacesStatus.loading;
  bool get isSuccess => this == NearbyPlacesStatus.success;
  bool get isFailure => this == NearbyPlacesStatus.failure;
}

@JsonSerializable()
class NearbyplacesState extends Equatable {
  NearbyplacesState({
    SearchParams? searchParams,
    NearbyPlacesStatus? status,
    NearbyPlaces? nearbyPlaces,
  })  : searchParams = searchParams ?? SearchParams.empty,
        status = status ?? NearbyPlacesStatus.initial,
        nearbyPlaces = nearbyPlaces ?? NearbyPlaces.empty;

  factory NearbyplacesState.fromJson(Map<String, dynamic> json) =>
      _$NearbyplacesStateFromJson(json);

  final SearchParams? searchParams;
  final NearbyPlacesStatus status;
  final NearbyPlaces nearbyPlaces;

  NearbyplacesState copyWith({
    SearchParams? searchParams,
    NearbyPlacesStatus? status,
    NearbyPlaces? nearbyPlaces,
  }) {
    return NearbyplacesState(
      status: status ?? this.status,
      searchParams: searchParams ?? this.searchParams,
      nearbyPlaces: nearbyPlaces ?? this.nearbyPlaces,
    );
  }

  Map<String, dynamic> toJson() => _$NearbyplacesStateToJson(this);

  @override
  List<Object?> get props => [searchParams, status];
}
