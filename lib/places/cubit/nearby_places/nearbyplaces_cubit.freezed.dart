// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nearbyplaces_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NearbyplacesState _$NearbyplacesStateFromJson(Map<String, dynamic> json) {
  return _NearbyplacesState.fromJson(json);
}

/// @nodoc
class _$NearbyplacesStateTearOff {
  const _$NearbyplacesStateTearOff();

  _NearbyplacesState call(
      {@JsonKey(toJson: searchParamsToJson)
          SearchParams? searchParams = SearchParams.empty,
      NearbyPlacesStatus? status = NearbyPlacesStatus.initial,
      @JsonKey(toJson: nearbyPlacesToJson)
          NearbyPlaces? nearbyPlaces = NearbyPlaces.empty}) {
    return _NearbyplacesState(
      searchParams: searchParams,
      status: status,
      nearbyPlaces: nearbyPlaces,
    );
  }

  NearbyplacesState fromJson(Map<String, Object?> json) {
    return NearbyplacesState.fromJson(json);
  }
}

/// @nodoc
const $NearbyplacesState = _$NearbyplacesStateTearOff();

/// @nodoc
mixin _$NearbyplacesState {
  @JsonKey(toJson: searchParamsToJson)
  SearchParams? get searchParams => throw _privateConstructorUsedError;
  NearbyPlacesStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(toJson: nearbyPlacesToJson)
  NearbyPlaces? get nearbyPlaces => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NearbyplacesStateCopyWith<NearbyplacesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearbyplacesStateCopyWith<$Res> {
  factory $NearbyplacesStateCopyWith(
          NearbyplacesState value, $Res Function(NearbyplacesState) then) =
      _$NearbyplacesStateCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(toJson: searchParamsToJson) SearchParams? searchParams,
      NearbyPlacesStatus? status,
      @JsonKey(toJson: nearbyPlacesToJson) NearbyPlaces? nearbyPlaces});

  $SearchParamsCopyWith<$Res>? get searchParams;
  $NearbyPlacesCopyWith<$Res>? get nearbyPlaces;
}

/// @nodoc
class _$NearbyplacesStateCopyWithImpl<$Res>
    implements $NearbyplacesStateCopyWith<$Res> {
  _$NearbyplacesStateCopyWithImpl(this._value, this._then);

  final NearbyplacesState _value;
  // ignore: unused_field
  final $Res Function(NearbyplacesState) _then;

  @override
  $Res call({
    Object? searchParams = freezed,
    Object? status = freezed,
    Object? nearbyPlaces = freezed,
  }) {
    return _then(_value.copyWith(
      searchParams: searchParams == freezed
          ? _value.searchParams
          : searchParams // ignore: cast_nullable_to_non_nullable
              as SearchParams?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NearbyPlacesStatus?,
      nearbyPlaces: nearbyPlaces == freezed
          ? _value.nearbyPlaces
          : nearbyPlaces // ignore: cast_nullable_to_non_nullable
              as NearbyPlaces?,
    ));
  }

  @override
  $SearchParamsCopyWith<$Res>? get searchParams {
    if (_value.searchParams == null) {
      return null;
    }

    return $SearchParamsCopyWith<$Res>(_value.searchParams!, (value) {
      return _then(_value.copyWith(searchParams: value));
    });
  }

  @override
  $NearbyPlacesCopyWith<$Res>? get nearbyPlaces {
    if (_value.nearbyPlaces == null) {
      return null;
    }

    return $NearbyPlacesCopyWith<$Res>(_value.nearbyPlaces!, (value) {
      return _then(_value.copyWith(nearbyPlaces: value));
    });
  }
}

/// @nodoc
abstract class _$NearbyplacesStateCopyWith<$Res>
    implements $NearbyplacesStateCopyWith<$Res> {
  factory _$NearbyplacesStateCopyWith(
          _NearbyplacesState value, $Res Function(_NearbyplacesState) then) =
      __$NearbyplacesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(toJson: searchParamsToJson) SearchParams? searchParams,
      NearbyPlacesStatus? status,
      @JsonKey(toJson: nearbyPlacesToJson) NearbyPlaces? nearbyPlaces});

  @override
  $SearchParamsCopyWith<$Res>? get searchParams;
  @override
  $NearbyPlacesCopyWith<$Res>? get nearbyPlaces;
}

/// @nodoc
class __$NearbyplacesStateCopyWithImpl<$Res>
    extends _$NearbyplacesStateCopyWithImpl<$Res>
    implements _$NearbyplacesStateCopyWith<$Res> {
  __$NearbyplacesStateCopyWithImpl(
      _NearbyplacesState _value, $Res Function(_NearbyplacesState) _then)
      : super(_value, (v) => _then(v as _NearbyplacesState));

  @override
  _NearbyplacesState get _value => super._value as _NearbyplacesState;

  @override
  $Res call({
    Object? searchParams = freezed,
    Object? status = freezed,
    Object? nearbyPlaces = freezed,
  }) {
    return _then(_NearbyplacesState(
      searchParams: searchParams == freezed
          ? _value.searchParams
          : searchParams // ignore: cast_nullable_to_non_nullable
              as SearchParams?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NearbyPlacesStatus?,
      nearbyPlaces: nearbyPlaces == freezed
          ? _value.nearbyPlaces
          : nearbyPlaces // ignore: cast_nullable_to_non_nullable
              as NearbyPlaces?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NearbyplacesState implements _NearbyplacesState {
  const _$_NearbyplacesState(
      {@JsonKey(toJson: searchParamsToJson)
          this.searchParams = SearchParams.empty,
      this.status = NearbyPlacesStatus.initial,
      @JsonKey(toJson: nearbyPlacesToJson)
          this.nearbyPlaces = NearbyPlaces.empty});

  factory _$_NearbyplacesState.fromJson(Map<String, dynamic> json) =>
      _$$_NearbyplacesStateFromJson(json);

  @override
  @JsonKey(toJson: searchParamsToJson)
  final SearchParams? searchParams;
  @JsonKey()
  @override
  final NearbyPlacesStatus? status;
  @override
  @JsonKey(toJson: nearbyPlacesToJson)
  final NearbyPlaces? nearbyPlaces;

  @override
  String toString() {
    return 'NearbyplacesState(searchParams: $searchParams, status: $status, nearbyPlaces: $nearbyPlaces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NearbyplacesState &&
            const DeepCollectionEquality()
                .equals(other.searchParams, searchParams) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.nearbyPlaces, nearbyPlaces));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchParams),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(nearbyPlaces));

  @JsonKey(ignore: true)
  @override
  _$NearbyplacesStateCopyWith<_NearbyplacesState> get copyWith =>
      __$NearbyplacesStateCopyWithImpl<_NearbyplacesState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NearbyplacesStateToJson(this);
  }
}

abstract class _NearbyplacesState implements NearbyplacesState {
  const factory _NearbyplacesState(
          {@JsonKey(toJson: searchParamsToJson) SearchParams? searchParams,
          NearbyPlacesStatus? status,
          @JsonKey(toJson: nearbyPlacesToJson) NearbyPlaces? nearbyPlaces}) =
      _$_NearbyplacesState;

  factory _NearbyplacesState.fromJson(Map<String, dynamic> json) =
      _$_NearbyplacesState.fromJson;

  @override
  @JsonKey(toJson: searchParamsToJson)
  SearchParams? get searchParams;
  @override
  NearbyPlacesStatus? get status;
  @override
  @JsonKey(toJson: nearbyPlacesToJson)
  NearbyPlaces? get nearbyPlaces;
  @override
  @JsonKey(ignore: true)
  _$NearbyplacesStateCopyWith<_NearbyplacesState> get copyWith =>
      throw _privateConstructorUsedError;
}
