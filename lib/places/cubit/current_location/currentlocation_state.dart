part of 'currentlocation_cubit.dart';

enum LocationStatus { initial, loading, success, failure }

extension LocationStatusX on LocationStatus {
  bool get isInitial => this == LocationStatus.initial;
  bool get isLoading => this == LocationStatus.loading;
  bool get isSuccess => this == LocationStatus.success;
  bool get isFailure => this == LocationStatus.failure;
}

// @immutable
// abstract class CurrentlocationState {}

@JsonSerializable()
class CurrentlocationState extends Equatable {
   CurrentlocationState({
    this.status = LocationStatus.initial,
    Location? location,
  }) : location = location ?? Location.empty;

  factory CurrentlocationState.fromJson(Map<String, dynamic> json) =>
      _$CurrentlocationStateFromJson(json);

  final LocationStatus status;
  final Location location;

  CurrentlocationState copyWith({
    LocationStatus? status,
    Location? location,
  }) {
    return CurrentlocationState(
      status: status ?? this.status,
      location: location ?? this.location,
    );
  }


  Map<String, dynamic> toJson() => _$CurrentlocationStateToJson(this);

  @override
  List<Object?> get props => [status, location];
}
