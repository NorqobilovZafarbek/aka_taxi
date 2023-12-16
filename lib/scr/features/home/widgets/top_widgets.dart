import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/constants/app_colors.dart';
import '../bloc/home_bloc.dart';

class HomeTopWidget extends StatelessWidget {
  const HomeTopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ketish manzil",
            style: TextStyle(
              color: AppColors.background,
              fontSize: 11.sp,
            ),
          ),
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) => Text(
              state.maybeMap(
                  orElse: () => "Qidirilmoqda..",
                  success: (value) => value.location.name),
              maxLines: 1,
              style: TextStyle(
                fontSize: 17.sp,
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.w400,
                color: AppColors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
