import 'dart:async';

import 'package:aka_project/scr/common/constants/app_colors.dart';
import 'package:aka_project/scr/common/routes/app_routes.dart';
import 'package:aka_project/scr/features/home/widgets/top_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import 'bloc/home_bloc.dart';
import 'widgets/custom_map.dart';
import 'widgets/custom_shimmer.dart';
import 'widgets/save_location_button.dart';
import 'widgets/user_location.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Completer<YandexMapController> yandexController = Completer();
  late HomeBloc homeBloc;
  GlobalKey<ScaffoldState> key = GlobalKey();

  @override
  void initState() {
    homeBloc = HomeBloc();
    _getCurrentLocation().then((value) async {
      await moveCamera();
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    homeBloc.close();
  }

  Future<void> moveCamera() async {
    final controller = await yandexController.future;
    try {
      Position position = (await Geolocator.getLastKnownPosition()) ??
          await _getCurrentLocation();
      controller.moveCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: Point(
              latitude: position.latitude,
              longitude: position.longitude,
            ),
          ),
        ),
      );
    } catch (e) {
      print(e);
    }
  }

  Future<Position> _getCurrentLocation() async {
    bool servicesEnable = await Geolocator.isLocationServiceEnabled();
    if (!servicesEnable) {}
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permission are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
        'Location permission are permanently deied, we cannot request permission',
      );
    }
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: homeBloc,
      child: Scaffold(
        backgroundColor: AppColors.background,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            key: key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.r),
                      ),
                    ),
                    child: SizedBox(
                      width: .95.sw,
                      height: .85.sh,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const HomeTopWidget(),
                          SizedBox(
                            height: .75.sh,
                            width: .95.sw,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12.r),
                                    bottomRight: Radius.circular(12.r),
                                  ),
                                  child: CustomMap(
                                    yandexController: yandexController,
                                    homeBloc: homeBloc,
                                  ),
                                ),
                                Shimmer(homeBloc: homeBloc),
                                Center(
                                  child: UserLocation(homeBloc: homeBloc),
                                ),
                                Positioned(
                                  right: 5.r,
                                  bottom: 20.r,
                                  child: IconButton(
                                    style: IconButton.styleFrom(
                                      fixedSize: Size(45.r, 45.r),
                                      backgroundColor: AppColors.white,
                                    ),
                                    icon: const Icon(Icons.gps_fixed_outlined),
                                    onPressed: moveCamera,
                                  ),
                                ),
                                Positioned(
                                  right: 10.r,
                                  top: 10.r,
                                  child: SaveLocationButton(homeBloc: homeBloc),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(.9.sw, 50.h),
                  ),
                  onPressed: () {
                    homeBloc.state.maybeMap(
                      orElse: () => null,
                      success: (value) => Navigator.pushNamed(
                        context,
                        arguments: value.location,
                        AppRoutes.direction,
                      ),
                    );
                  },
                  child: const Text("Davom etish"),
                ),
              ],
            )),
      ),
    );
  }
}
