import 'package:dio/dio.dart';

import 'dio_services.dart';

abstract interface class IServicesWrapper {
  abstract final Dio dio;
  abstract final AppServices services;

  Future<void> request(
      String path, {
        Method method = Method.get,
        Map<String, String>? headers,
        Map<String, String>? queryParameters,
        Map<String, Object>? body,
      });
}

class LocationServices implements IServicesWrapper {

  LocationServices({required this.dio}) : services = AppServices(dio);

  @override
  final Dio dio;

  @override
  final AppServices services;

  @override
  Future<String?> request(
      String path, {
        Method method = Method.get,
        Map<String, String>? headers,
        Map<String, Object>? queryParameters,
        Map<String, Object>? body,
      }) =>
      services.request(
        path,
        method: method,
        headers: headers,
        queryParameters: queryParameters,
        body: body,
      );

}
