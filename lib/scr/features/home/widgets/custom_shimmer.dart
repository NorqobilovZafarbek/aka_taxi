import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bloc/home_bloc.dart';

class Shimmer extends StatelessWidget {
  const Shimmer({
    super.key,
    required this.homeBloc,
  });

  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: homeBloc,
      builder: (context, state) => state.maybeMap(
        orElse: () => const SizedBox.shrink(),
        gesture: (value) => ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12.r),
            bottomRight: Radius.circular(12.r),
          ),
          child: ShaderMask(
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                colors: [
                  Colors.black26,
                  Colors.black26,
                ],
                tileMode: TileMode.clamp,
              ).createShader(bounds);
            },
            blendMode: BlendMode.darken,
            child: const SizedBox.expand(
              child: ColoredBox(
                color: Colors.black26,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
