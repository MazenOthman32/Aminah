import 'package:amina/Resources/color_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedSlider extends StatelessWidget {
  final int index;
  final int currentPage;

  const AnimatedSlider({
    required this.index,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      margin: EdgeInsets.symmetric(horizontal: 4.0.w),
      width: currentPage == index ? 12.0.w : 8.0.w,
      height: 8.0.h,
      decoration: BoxDecoration(
        color: currentPage == index
            ? ColorsManager.primary
            : ColorsManager.boardingSliderPointsColor,
        borderRadius: BorderRadius.circular(4.0.r),
      ),
    );
  }
}
