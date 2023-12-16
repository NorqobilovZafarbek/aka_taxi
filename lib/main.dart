

import 'package:aka_project/scr/common/data/location_model.dart';
import 'package:aka_project/scr/common/widgets/app.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(LocationModelAdapter());
  await Hive.openBox<LocationModel>("location_box");
  runApp(const App());
}

