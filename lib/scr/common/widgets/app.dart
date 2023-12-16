import 'package:aka_project/scr/common/routes/app_routes.dart';
import 'package:aka_project/scr/features/details/detail_bloc/detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _App();
}

class _App extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return BlocProvider(
          create: (context) => DetailBloc()..add(const DetailEvent.getLocation()),
          child: MaterialApp(
            title: "Aka Taxi",
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              useMaterial3: true,
            ),
            routes: AppRoutes.routes,
          ),
        );
      },
    );
  }
}
