
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../bloc/home_bloc.dart';

class CustomMap extends StatelessWidget {

  final Completer<YandexMapController> yandexController;
  final HomeBloc homeBloc;

  const CustomMap({
    super.key,
    required this.yandexController,
    required this.homeBloc,
  });

  @override
  Widget build(BuildContext context) {
    return YandexMap(
      onMapCreated: (controller) {
        yandexController.complete(controller);
      },
      onCameraPositionChanged: (
          cameraPosition,
          reason,
          finished,
          ) {
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
    );
  }
}
