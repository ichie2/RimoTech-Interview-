import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
part 'location_state.freezed.dart';

extension LocationStatusState on LocationStatus {
  bool get isLoading => this is _$_LocationStatusLoading;
  bool get isIdle => this is _LocationStatusIdle;
}

@freezed
abstract class LocationStatus with _$LocationStatus {
  // loading
  const factory LocationStatus.loading() = _LocationStatusLoading;

  // idle
  const factory LocationStatus.idle() = _LocationStatusIdle;

  // success
  const factory LocationStatus.success(LatLng location) =
      _LocatiorStatusSuccess;

  // error
  const factory LocationStatus.error([String? error]) = __LocationStatusError;
}
