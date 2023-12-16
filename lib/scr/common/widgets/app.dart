import 'package:aka_project/scr/common/routes/app_routes.dart';
import 'package:aka_project/scr/features/details/detail_bloc/detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../main.dart';

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

class ControlPage extends StatelessWidget {
  const ControlPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(.8.sw, .04.sh),
                backgroundColor: Colors.orange,
              ),
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.home);
              },
              child: const Text("Sayohatni boshlash"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(.8.sw, .04.sh),
                backgroundColor: Colors.orange,
              ),
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.details);
              },
              child: const Text("Saqlangan Joylarni Ko'rish"),
            ),
          ],
        ),
      ),
    );
  }
}
