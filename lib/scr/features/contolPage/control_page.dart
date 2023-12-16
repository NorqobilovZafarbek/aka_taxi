
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/routes/app_routes.dart';

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
