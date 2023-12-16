
import 'dart:convert';

import 'package:aka_project/scr/common/constants/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../dio_services/wraper.dart';

abstract interface class ICitiesRepository {
  abstract final LocationServices locationServices;

  Future<String?> getLocation(Point point);
}

class LocationRepository extends ICitiesRepository {


  LocationRepository() : locationServices  = LocationServices(dio: dio);

  static final dio =Dio(
    BaseOptions(
      baseUrl: ApiConst.baseUrl,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
      responseType: ResponseType.json,
    ),
  );

  @override
  LocationServices locationServices;

  @override
  Future<String?> getLocation(Point point) async {

    String? response = await locationServices.request(
      ApiConst.allPath,
      queryParameters: ApiConst.queryParams(point),
    );

    final data = jsonDecode(response ?? "Null Value");
        final result = data['response']['GeoObjectCollection']['featureMember'][0]['GeoObject'];
        final address = result['metaDataProperty']['GeocoderMetaData']['text'];
        return address;
  }

}
