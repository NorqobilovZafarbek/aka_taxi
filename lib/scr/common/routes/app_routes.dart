
import 'package:aka_project/scr/common/widgets/app.dart';
import 'package:aka_project/scr/features/details/details_page.dart';
import 'package:aka_project/scr/features/home/home_page.dart';
import 'package:flutter/cupertino.dart';

abstract final class AppRoutes {
  static const String control = "/";
  static const String home = "/home";
  static const String details = "/details";
  static const String direction = "/direction";


  static final Map<String,Widget Function(BuildContext context)> routes = {
    control: (context) => const ControlPage(),
    home: (context) => const HomePage(),
    details: (context) => const DetailsPage(),
    direction: (context) => const HomePage(),
  };
}