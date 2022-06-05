import 'package:freezed_annotation/freezed_annotation.dart';
part 'loader_status.freezed.dart';

extension LoaderStatusState on LoaderStatus {
  bool get isLoading => this is _$_LoaderStatusLoading;
  bool get isIdle => this is _LoaderStatusIdle;
}

@freezed
abstract class LoaderStatus with _$LoaderStatus {
  // loading
  const factory LoaderStatus.loading() = _LoaderStatusLoading;

  // idle
  const factory LoaderStatus.idle() = _LoaderStatusIdle;

  // success
  const factory LoaderStatus.success() = _LoaderStatusSuccess;

  // error
  const factory LoaderStatus.error([String? error]) = __LoaderStatusError;
}
