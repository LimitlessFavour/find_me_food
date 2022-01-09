import 'package:equatable/equatable.dart';
import 'package:find_me_food_bloc/places/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location_repository/location_repository.dart'
    as location_repository;

part 'location.g.dart';

@JsonSerializable()
class Location extends Equatable {
  const Location({
    this.latitude,
    this.longitude,
    required this.lastUpdated,
  });

  factory Location.fromRepository(
      location_repository.LocatorPosition position) {
    return Location(
      latitude: position.latitude,
      longitude: position.longitude,
      lastUpdated: DateTime.now(),
    );
  }
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  static final empty = Location(
    lastUpdated: DateTime(0),
  );

  final double? latitude;
  final double? longitude;
  final DateTime lastUpdated;

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  @override
  List<Object> get props => [latitude ?? 0, longitude ?? 0, lastUpdated];

  Location copyWith({
    double? latitude,
    double? longitude,
    DateTime? lastUpdated,
  }) {
    return Location(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      lastUpdated: lastUpdated ?? this.lastUpdated,
    );
  }
}
