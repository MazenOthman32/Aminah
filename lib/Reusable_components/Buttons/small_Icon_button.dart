import 'package:amina/Resources/color_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SmallIconButton extends StatelessWidget {
  final String iconAsset;
  final int iconCount;
  final Function() onTap;
  SmallIconButton({
    required this.iconAsset,
    required this.iconCount,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(35.w, 35.h),
            shape: CircleBorder(),
          ),
          onPressed: onTap,
          child: Center(
            child: SvgPicture.asset(
              fit: BoxFit.scaleDown,
              iconAsset,
              width: 24.w,
              height: 24.h,
            ),
          ),
        ),
        // Badge
        if (iconCount > 0)
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              padding: EdgeInsets.all(5.w),
              decoration: BoxDecoration(
                color: ColorsManager.Secondery,
                shape: BoxShape.circle,
              ),
              child: Text(
                '$iconCount',
                style: TextStyle(
                  color: ColorsManager.white,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
