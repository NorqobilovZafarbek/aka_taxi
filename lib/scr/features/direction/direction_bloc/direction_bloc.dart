import 'dart:async';

import 'package:aka_project/scr/common/constants/app_images.dart';
import 'package:aka_project/scr/common/data/location_model.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meta/meta.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

part 'direction_event.dart';

part 'direction_state.dart';

class DirectionBloc extends Bloc<DirectionEvent, DirectionState> {
  DirectionBloc() : super(DirectionLoadingState()) {
    on<DirectionEvent>(
      (event, emit) => event.map(
        onCurrentPosition: (event) => _getCurrentPosition(event, emit),
      ),
    );
  }

  Future<void> _getCurrentPosition(
      GetCurrentPosition event, Emitter<DirectionState> emit) async {
    List<MapObject> objects = [];

    try {
      final point2 =
          ModalRoute.of(event.context)?.settings.arguments as LocationModel?;
      final point1 = await Geolocator.getCurrentPosition();
      var resultWithSession = YandexDriving.requestRoutes(
        points: [
          RequestPoint(
            point:
                Point(latitude: point1.latitude, longitude: point1.longitude),
            requestPointType: RequestPointType.wayPoint,
          ),
          RequestPoint(
            point: Point(latitude: point2!.lat, longitude: point2.lon),
            requestPointType: RequestPointType.wayPoint,
          ),
        ],
        drivingOptions: const DrivingOptions(
          initialAzimuth: 0,
          routesCount: 5,
          avoidTolls: true,
        ),
      );
      objects.addAll(
        [point1, point2].map(
          (e) => PlacemarkMapObject(
            opacity: 1,
            mapId: MapObjectId(e is Position ? "user" : "currentUser"),
            icon: PlacemarkIcon.single(
              PlacemarkIconStyle(
                image: BitmapDescriptor.fromAssetImage(AppImages.location),
              ),
            ),
            point: Point(
              latitude: e is Position ? e.latitude : (e as LocationModel).lat,
              longitude: e is Position ? e.longitude : (e as LocationModel).lon,
            ),
          ),
        ),
      );

      emit(DirectionSuccessState(objects: objects));

      final temp = await resultWithSession.result;
      if(temp.error != null){
        emit(DirectionErrorState(message: temp.error!));
        return;
      }

      final DrivingRoute? points = temp.routes?.firstOrNull;

      objects.add(
        PolylineMapObject(
          mapId: const MapObjectId("direction"),
          polyline: Polyline(points: points?.geometry ?? []),
        ),
      );
      emit(DirectionSuccessState(objects: objects));
    } catch (e) {
      print(e);
    }
  }
}
