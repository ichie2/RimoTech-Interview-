// get user location provider
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rimo/data/notifier/app_notifier.dart';
import 'package:rimo/data/repository/app_repository.dart';
import 'package:rimo/data/states/loader_status.dart';
import 'package:rimo/data/states/location_state.dart';

// Get Location Provider
final getUserLocationProvider =
    StateNotifierProvider<GetLocationStateNotifier, LocationStatus>((ref) {
  return GetLocationStateNotifier(ref);
});

//  Login Provider
final loginProvider =
    StateNotifierProvider<LoginStateNotifier, LoaderStatus>((ref) {
  return LoginStateNotifier(ref, appRepository: ref.watch(_appProvider));
});

//
final _appProvider = Provider<BaseAppRepository>((ref) => AppRepository());
