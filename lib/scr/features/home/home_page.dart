import 'dart:async';

import 'package:aka_project/scr/common/constants/app_colors.dart';
import 'package:aka_project/scr/features/details/detail_bloc/detail_bloc.dart';
import 'package:aka_project/scr/features/home/widgets/top_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import 'bloc/home_bloc.dart';
import 'widgets/customBottomSheet.dart';

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
                        Radius.circular(10.r),
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
                                  child: YandexMap(
                                    onMapCreated: (controller) {
                                      yandexController.complete(controller);
                                    },
                                    onCameraPositionChanged: (cameraPosition,
                                        reason,
                                        finished,) {
                                      if (!finished) {
                                        homeBloc.add(const HomeEvent.gesture());
                                      } else {
                                        homeBloc.add(
                                          HomeEvent.getCitiName(
                                            cameraPosition.target,
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ),
                                BlocBuilder<HomeBloc, HomeState>(
                                  bloc: homeBloc,
                                  builder: (context, state) =>
                                      state.maybeMap(
                                        orElse: () => const SizedBox.shrink(),
                                        gesture: (value) =>
                                            ShaderMask(
                                              shaderCallback: (Rect bounds) {
                                                return const LinearGradient(
                                                  colors: [
                                                    Colors.black26,
                                                    Colors.black26,
                                                  ],
                                                  tileMode: TileMode.clamp,
                                                ).createShader(bounds);
                                              },
                                              blendMode: BlendMode.darken,
                                              child: const SizedBox.expand(
                                                child: ColoredBox(
                                                  color: Colors.black26,
                                                ),
                                              ),
                                            ),
                                      ),
                                ),
                                Center(
                                  child: BlocBuilder<HomeBloc, HomeState>(
                                    bloc: homeBloc,
                                    builder: (context, state) =>
                                        Transform.translate(
                                          offset: const Offset(-5, -34),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(5.r),
                                                ),
                                                child: ColoredBox(
                                                  color: Colors.black26,
                                                  child: Padding(
                                                    padding: EdgeInsets.all(
                                                        6.r),
                                                    child: AnimatedContainer(
                                                      duration: const Duration(
                                                        milliseconds: 200,
                                                      ),
                                                      width: state.maybeMap(
                                                        orElse: () => 40.w,
                                                        gesture: (value) =>
                                                        35.w,
                                                      ),
                                                      height: state.maybeMap(
                                                        orElse: () => 30.h,
                                                        gesture: (value) =>
                                                        35.w,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.all(
                                                          Radius.circular(8.r),
                                                        ),
                                                        color: Colors.orange,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              AnimatedContainer(
                                                duration: const Duration(
                                                    milliseconds: 100),
                                                width: 3.w,
                                                height: state.maybeMap(
                                                  orElse: () => 15.h,
                                                  gesture: (value) => 25.h,
                                                ),
                                                child: const ColoredBox(
                                                  color: Colors.black26,
                                                ),
                                              ),
                                              Container(
                                                height: 12.h,
                                                width: 10.w,
                                                decoration: const BoxDecoration(
                                                  color: Colors.black,
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                  ),
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
                                  child: OutlinedButton(
                                    style: ElevatedButton.styleFrom(
                                      fixedSize: Size(50.r, 50.r),
                                      shape: const CircleBorder(),
                                      backgroundColor: Colors.orange,
                                      padding: const EdgeInsets.all(0),
                                    ),
                                    child: Builder(builder: (context) {
                                      return Icon(
                                        Icons.add,
                                        color: AppColors.white,
                                        size: 30.r,
                                      );
                                    }),
                                    onPressed: () {
                                      homeBloc.state.maybeMap(
                                       orElse: () => null,
                                       success: (value) => showModalBottomSheet(
                                         context: context,
                                         builder: (BuildContext context) {
                                           return CustomBottomSheet(
                                             initialText: value.location.name,
                                             onTap: () {
                                               context.read<DetailBloc>().add(DetailEvent.saveLocation(value.location));
                                               Navigator.pop(context);
                                             },
                                           );
                                         },
                                       ),
                                      );
                                    },
                                  ),
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
                  onPressed: () {},
                  child: const Text("Davom etish"),
                ),
              ],
            )),
      ),
    );
  }
}


