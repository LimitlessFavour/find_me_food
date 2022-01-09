import 'package:geolocator/geolocator.dart';

class LocatorPosition {
  const LocatorPosition({
    required this.longitude,
    required this.latitude,
    required this.timestamp,
    required this.accuracy,
    required this.altitude,
    required this.heading,
    required this.speed,
    required this.speedAccuracy,
    this.floor,
    this.isMocked = false,
  });

  final double latitude;
  final double longitude;
  final DateTime? timestamp;
  final double altitude;
  final double accuracy;
  final double heading;
  final int? floor;
  final double speed;
  final double speedAccuracy;
  final bool isMocked;

  factory LocatorPosition.fromPosition(Position position) {
    return LocatorPosition(
      latitude: position.latitude,
      longitude: position.longitude,
      timestamp: position.timestamp,
      altitude: position.altitude,
      accuracy: position.accuracy,
      heading: position.heading,
      floor: position.floor,
      speed: position.speed,
      speedAccuracy: position.speedAccuracy,
      isMocked: position.isMocked,
    );
  }

  static Position fromMap(dynamic message) {
    final Map<dynamic, dynamic> positionMap = message;

    if (!positionMap.containsKey('latitude')) {
      throw ArgumentError.value(positionMap, 'positionMap',
          'The supplied map doesn\'t contain the mandatory key `latitude`.');
    }

    if (!positionMap.containsKey('longitude')) {
      throw ArgumentError.value(positionMap, 'positionMap',
          'The supplied map doesn\'t contain the mandatory key `longitude`.');
    }

    final timestamp = positionMap['timestamp'] != null
        ? DateTime.fromMillisecondsSinceEpoch(positionMap['timestamp'].toInt(),
            isUtc: true)
        : null;

    return Position(
      latitude: positionMap['latitude'],
      longitude: positionMap['longitude'],
      timestamp: timestamp,
      altitude: positionMap['altitude'] ?? 0.0,
      accuracy: positionMap['accuracy'] ?? 0.0,
      heading: positionMap['heading'] ?? 0.0,
      floor: positionMap['floor'],
      speed: positionMap['speed'] ?? 0.0,
      speedAccuracy: positionMap['speed_accuracy'] ?? 0.0,
      isMocked: positionMap['is_mocked'] ?? false,
    );
  }

  Map<String, dynamic> toJson() => {
        'longitude': longitude,
        'latitude': latitude,
        'timestamp': timestamp?.millisecondsSinceEpoch,
        'accuracy': accuracy,
        'altitude': altitude,
        'floor': floor,
        'heading': heading,
        'speed': speed,
        'speed_accuracy': speedAccuracy,
        'is_mocked': isMocked,
      };

  @override
  bool operator ==(Object other) {
    var areEqual = other is Position &&
        other.accuracy == accuracy &&
        other.altitude == altitude &&
        other.heading == heading &&
        other.latitude == latitude &&
        other.longitude == longitude &&
        other.floor == floor &&
        other.speed == speed &&
        other.speedAccuracy == speedAccuracy &&
        other.timestamp == timestamp &&
        other.isMocked == isMocked;

    return areEqual;
  }

  @override
  int get hashCode =>
      accuracy.hashCode ^
      altitude.hashCode ^
      heading.hashCode ^
      latitude.hashCode ^
      longitude.hashCode ^
      floor.hashCode ^
      speed.hashCode ^
      speedAccuracy.hashCode ^
      timestamp.hashCode ^
      isMocked.hashCode;
}
