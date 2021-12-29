import 'package:flutter/material.dart';

class FlavorConfig {
  const FlavorConfig({
    this.name = '',
    this.themeData,
    this.variables,
  });

  final String name;
  final ThemeData? themeData;
  final Map<String, dynamic>? variables;

  FlavorConfig copyWith({
    String? name,
    ThemeData? themeData,
    Map<String, dynamic>? variables,
  }) {
    return FlavorConfig(
      name: name ?? this.name,
      themeData: themeData ?? this.themeData,
      variables: variables ?? this.variables,
    );
  }
}
