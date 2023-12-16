import 'package:hive/hive.dart';

part 'location_model.g.dart';

@HiveType(typeId: 3)
class LocationModel extends HiveObject{
  @HiveField(0)
  final String name;
  @HiveField(1)
  final double lat;
  @HiveField(2)
  final double lon;

  LocationModel({
    required this.name,
    required this.lat,
    required this.lon,
  });
}
