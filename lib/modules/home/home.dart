import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rimo/core/exports.dart';
import 'package:rimo/data/provider/app_provider.dart';
import 'package:rimo/widgets/switch_button.dart';

class Home extends ConsumerStatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(microseconds: 0), () {
      ref.watch(getUserLocationProvider.notifier).fetchLocation(context);
    });
  }

  late GoogleMapController _controller;

  @override
  Widget build(BuildContext context) {
    final fetch = ref.watch(getUserLocationProvider);
    final con = ref.watch(getUserLocationProvider.notifier);
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: fetch.map(
              loading: (_) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              },
              idle: (_) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              },
              success: (data) {
                return GoogleMap(
                  myLocationEnabled: false,
                  zoomGesturesEnabled: true,
                  zoomControlsEnabled: true,
                  mapType: MapType.normal,
                  markers: Set<Marker>.of(con.markers!),
                  initialCameraPosition: CameraPosition(
                    target: data.location,
                    zoom: 15,
                  ),
                  onMapCreated: (controller) {
                    _controller = controller;
                  },
                );
              },
              error: (_) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              },
            ),
          ),
          Positioned(
            left: 24.w,
            top: 50.h,
            child: Container(
              decoration: const BoxDecoration(
                color: whiteColor,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  // go to order
                  Navigator.pushNamed(context, RouteGenerator.order);
                },
                icon: const Icon(
                  Icons.menu,
                  color: blackColor,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 1,
            child: Container(
              height: 150.h,
              width: 400.w,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 25.h),
              decoration: const BoxDecoration(
                color: whiteColor,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.h),
                      Text(
                        "Hi, Richard,",
                        style: TextStyle(
                          fontSize: 21.sp,
                          fontWeight: FontWeight.w600,
                          color: blackTextColor,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "You are offline,",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          color: blackTextColor,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  const SwitchButton(),
                  SizedBox(width: 20.w),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
