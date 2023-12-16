import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/constants/app_colors.dart';
import '../../details/detail_bloc/detail_bloc.dart';
import '../bloc/home_bloc.dart';
import 'customBottomSheet.dart';

class SaveLocationButton extends StatelessWidget {
  const SaveLocationButton({
    super.key,
    required this.homeBloc,
  });

  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(50.r, 50.r),
        shape: const CircleBorder(),
        backgroundColor: Colors.orange,
        padding: const EdgeInsets.all(0),
      ),
      child: Builder(builder: (context) {
        return Icon(
          Icons.add,
          color: AppColors.white,
          size: 30.r,
        );
      }),
      onPressed: () {
        homeBloc.state.maybeMap(
          orElse: () => null,
          success: (value) =>
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return CustomBottomSheet(
                    initialText: value.location.name,
                    onTap: () {
                      context.read<DetailBloc>().add(
                        DetailEvent.saveLocation(
                          value.location,
                        ),
                      );
                      Navigator.pop(context);
                    },
                  );
                },
              ),
        );
      },
    );
  }
}
