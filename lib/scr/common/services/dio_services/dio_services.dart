import 'package:dio/dio.dart';
import '../../constants/api_constants.dart';


enum Method {
  get,
  post,
  put,
  patch,
  delete,
}


class AppServices {
  final Dio dio;

  AppServices._(this.dio);

  static AppServices _instance(Dio dio) => AppServices._(dio);

  factory   AppServices(Dio dio) => _instance(dio);

  Future<String?> request(
      String path, {
        Method method = Method.get,
        Map<String, String>? headers,
        Map<String, Object>? queryParameters,
        Object? body,
      }) async {

    if (headers != null) dio.options.headers.addAll(headers);
    queryParameters = (queryParameters == null) ? ApiConst.apiKey() : queryParameters..addAll(ApiConst.apiKey());

    Response<String> response = await switch (method) {
        Method.get =>
            dio.get<String>(path, queryParameters: queryParameters, data: body),
        Method.post =>
            dio.post<String>(path, queryParameters: queryParameters, data: body),
        Method.put =>
            dio.put<String>(path, queryParameters: queryParameters, data: body),
        Method.patch =>
            dio.patch<String>(path, queryParameters: queryParameters, data: body),
        Method.delete =>
            dio.delete(path, queryParameters: queryParameters, data: body),
      };

      return response.data;
  }
}

class UnknownException implements Exception {
  final String message;
  final int statusCode;

  UnknownException(
      this.message,
      this.statusCode,
      );
}

class ClientException implements Exception {
  final String message;
  final int statusCode;

  ClientException(this.message, this.statusCode);
}

class ServerException implements Exception {
  final String message;
  final int statusCode;

  ServerException(
      this.message,
      this.statusCode,
      );
}
