import 'dart:async';

import 'package:aka_project/scr/common/routes/app_routes.dart';
import 'package:aka_project/scr/features/direction/direction_bloc/direction_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class Direction extends StatefulWidget {
  const Direction({super.key});

  @override
  State<Direction> createState() => _DirectionState();
}

class _DirectionState extends State<Direction> {
  late DirectionBloc bloc;
  Completer<YandexMapController> yandexMapController = Completer();

  @override
  void initState() {
    bloc = DirectionBloc()
      ..add(GetCurrentPosition(context: context));
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: Scaffold(
        body: BlocConsumer<DirectionBloc, DirectionState>(
          listener: (BuildContext context, DirectionState state) {
            state.map(
              onLoading: (state) => {},
              onSuccess: (state) async {
                if (state.objects.length == 2) {
                  final controller = await yandexMapController.future;
                  await controller.moveCamera(
                    CameraUpdate.newBounds(
                      BoundingBox(
                        northEast:
                        (state.objects.first as PlacemarkMapObject).point,
                        southWest:
                        (state.objects.last as PlacemarkMapObject).point,
                      ),
                    ),
                  );
                  await controller.moveCamera(CameraUpdate.zoomOut());
                }
              },
              onError: (state) {},
            );
          },
          builder: (context, state) {
            return Stack(
              children: [
                YandexMap(
                  onMapCreated: (controller) {
                    yandexMapController.complete(controller);
                  },
                  mapObjects: state.map(
                    onLoading: (state) => [],
                    onSuccess: (state) => state.objects,
                    onError: (state) => [],
                  ),
                ),
                Positioned(
                  bottom: 10.r,
                  left: 15.r,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(.9.sw, .07.sh),
                      backgroundColor: Colors.orange,
                    ),
                    child: const Text("Home"),
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context, AppRoutes.home, (route) => false,);
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
