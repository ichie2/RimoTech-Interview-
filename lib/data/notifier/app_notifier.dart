// GET USER LOCATION
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:rimo/constants/image_constant.dart';
import 'package:rimo/core/exports.dart';
import 'package:rimo/core/extension.dart';
import 'package:rimo/data/repository/app_repository.dart';
import 'package:rimo/data/states/loader_status.dart';
import 'package:rimo/data/states/location_state.dart';
import 'package:rimo/widgets/loading_widget.dart';
import 'package:rimo/widgets/toast_widget.dart';

class GetLocationStateNotifier extends StateNotifier<LocationStatus> {
  final Ref ref;

  final List<Marker>? markers = <Marker>[];

  GetLocationStateNotifier(this.ref) : super(const LocationStatus.idle());
  // AUTO FETCH
  Future fetchLocation(context) async {
    Location location = Location();
    late bool _serviceEnabled;
    late PermissionStatus _permissionGranted;
    late LocationData _locationData;
    state = const LocationStatus.loading();

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    _locationData = await location.getLocation();
    location.onLocationChanged.listen((event) {
      state = LocationStatus.success(
        LatLng(event.latitude!, event.longitude!),
      );
    });

    // ignore: unnecessary_null_comparison
    if (_locationData != null) {
      state = LocationStatus.success(
          LatLng(_locationData.latitude!, _locationData.longitude!));
      markers!.add(
        Marker(
          markerId: const MarkerId('userLocation'),
          position: LatLng(_locationData.latitude!, _locationData.longitude!),
          icon: BitmapDescriptor.fromBytes(
            await getBytesFromAsset(
              ConstanceData.pin,
              100,
            ),
          ),
        ),
      );
    } else {
      //
      state = const LocationStatus.error();
    }
  }

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);

    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);

    ui.FrameInfo fi = await codec.getNextFrame();

    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }
}

class LoginStateNotifier extends StateNotifier<LoaderStatus> {
  final Ref ref;
  final BaseAppRepository _appRepository;

  LoginStateNotifier(this.ref, {required BaseAppRepository appRepository})
      : _appRepository = appRepository,
        super(const LoaderStatus.idle());

  Future login(String? email, password, context) async {
    state = const LoaderStatus.loading();
    showLoading(context);
    try {
      final data = await _appRepository.login(
          email: phoneNumber(email), password: password);
      data.fold((l) {
        state = LoaderStatus.error(l.message);

        dismissLoading(context);
        successToast(l.message, context);
      }, (r) async {
        state = const LoaderStatus.success();
        dismissLoading(context);

        successToast(r, context);
        await Future.delayed(const Duration(milliseconds: 300));
        Navigator.pushNamedAndRemoveUntil(
            context, RouteGenerator.home, (route) => false);
      });
    } catch (e) {
      state = LoaderStatus.error(e.toString());
      dismissLoading(context);
      successToast(e.toString(), context);
    }
  }
}
