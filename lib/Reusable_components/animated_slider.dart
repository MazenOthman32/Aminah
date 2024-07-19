import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Resources/color_resources.dart';

class AnimatedSlider extends StatelessWidget {
  final int index;
  final int currentPage;
  const AnimatedSlider({required this.index, required this.currentPage});
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 200,
      ),
      height: 8.h,
      width: (index == currentPage) ? 15.w : 10.w,
      margin: EdgeInsets.symmetric(
        horizontal: 3.w,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: (index == currentPage)
              ? ColorsManager.primary
              : ColorsManager.boardingSliderPointsColor),
    );
  }
}
