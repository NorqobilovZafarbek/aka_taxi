import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bloc/home_bloc.dart';

class UserLocation extends StatelessWidget {
  const UserLocation({
    super.key,
    required this.homeBloc,
  });

  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: homeBloc,
      builder: (context, state) =>
          Transform.translate(
            offset: const Offset(-5, -34),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.r),
                  ),
                  child: ColoredBox(
                    color: Colors.black26,
                    child: Padding(
                      padding: EdgeInsets.all(
                          6.r),
                      child: AnimatedContainer(
                        duration: const Duration(
                          milliseconds: 200,
                        ),
                        width: state.maybeMap(
                          orElse: () => 40.w,
                          gesture: (value) =>
                          35.w,
                        ),
                        height: state.maybeMap(
                          orElse: () => 30.h,
                          gesture: (value) =>
                          35.w,
                        ),
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.all(
                            Radius.circular(8.r),
                          ),
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(
                      milliseconds: 100),
                  width: 3.w,
                  height: state.maybeMap(
                    orElse: () => 15.h,
                    gesture: (value) => 25.h,
                  ),
                  child: const ColoredBox(
                    color: Colors.black26,
                  ),
                ),
                Container(
                  height: 12.h,
                  width: 10.w,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
    );
  }
}


