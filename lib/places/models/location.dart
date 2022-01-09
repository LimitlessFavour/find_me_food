import 'package:equatable/equatable.dart';
import 'package:find_me_food_bloc/places/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location_repository/location_repository.dart'
    as location_repository;

part 'location.g.dart';

@JsonSerializable()
class Location extends Equatable {
  const Location({this.latitude, this.longitude});

  factory Location.fromRepository(
      location_repository.LocatorPosition position) {
    return Location(
      latitude: position.latitude,
      longitude: position.longitude,
    );
  }
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  static const empty = Location();
  final double? latitude;
  final double? longitude;

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  @override
  List<Object> get props => [latitude ?? 0, longitude ?? 0];

  Location copyWith({
    double? latitude,
    double? longitude,
  }) {
    return Location(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }
}
