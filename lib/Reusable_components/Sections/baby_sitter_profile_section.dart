import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/Reusable_components/Sections/description_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileSection extends StatelessWidget {
  final String name;
  final String image;
  final double imageHeight;
  final double imageWidth;
  final double rate;
  final int age;
  final String role;

  ProfileSection({
    required this.name,
    required this.age,
    required this.image,
    this.imageHeight = 100,
    this.imageWidth = 100,
    required this.rate,
    required this.role,
  });

  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            image,
            height: imageHeight,
            width: imageWidth,
          ),
        ),
        SizedBox(width: 10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextWidget(
              text: name,
              fontsize: 16.sp,
              color: ColorsManager.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.yellow),
                TextWidget(
                  text: rate.toString(),
                  color: ColorsManager.black,
                  fontsize: 12.sp,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(color: ColorsManager.med_grey, width: 1.5.w),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: role,
                    color: ColorsManager.black,
                    fontsize: 14.sp,
                  ),
                  VerticalDivider(
                    color: ColorsManager.med_grey,
                    width: 1.w,
                  ),
                  TextWidget(
                    text: age.toString() + ' عام ',
                    color: ColorsManager.black,
                    fontsize: 14.sp,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
