
import 'package:aka_project/scr/features/details/details_page.dart';
import 'package:aka_project/scr/features/home/home_page.dart';
import 'package:flutter/cupertino.dart';

import '../../features/contolPage/control_page.dart';
import '../../features/direction/direction.dart';

abstract final class AppRoutes {
  static const String control = "/";
  static const String home = "/home";
  static const String details = "/details";
  static const String direction = "/direction";


  static final Map<String,Widget Function(BuildContext context)> routes = {
    control: (context) => const ControlPage(),
    home: (context) => const HomePage(),
    details: (context) => const DetailsPage(),
    direction: (context) => const Direction(),
  };
}