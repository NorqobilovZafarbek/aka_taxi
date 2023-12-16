import 'package:yandex_mapkit/yandex_mapkit.dart';

abstract final class  ApiConst {

  static const _apiKey = String.fromEnvironment(
    'api_key',
    defaultValue: "",
  );

  static const baseUrl = "https://geocode-maps.yandex.ru/";

  static String allPath = "1.x/";

  static Map<String, Object> apiKey() {
    return {
      "apikey": _apiKey,
    };
  }

    static Map<String, Object>? queryParams(Point point) {
    return {
      "apikey": _apiKey,
      "geocode": "${point.longitude},${point.latitude}",
      "format": "json",
    };
  }


}