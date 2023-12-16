import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomSheet extends StatefulWidget {
  final String initialText;
  final void Function() onTap;

  const CustomBottomSheet({
    super.key,
    required this.onTap,
    required this.initialText,
  });

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {


  late final TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController(text: widget.initialText);
    super.initState();
  }

  @override
  void dispose() {
    controller.clear();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText: 'joriy manzil',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.r))
              ),
            ),
          ),
          SizedBox(height: 16.r),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize:  Size(.9.sw, .05.sh),
              backgroundColor: Colors.orange,
            ),
            onPressed: widget.onTap,
            child: const Text('Saved'),
          ),
        ],
      ),
    );
  }
}
