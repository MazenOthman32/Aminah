import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserAvatar extends StatelessWidget {
  final String imagePath;
  final String name;
  final bool isAddButton;

  UserAvatar({
    required this.imagePath,
    required this.name,
    this.isAddButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: isAddButton
              ? () {
                  print('123');
                }
              : () {
                  print('456');
                },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 4.w),
            width: 45.w,
            height: 45.h,
            decoration: BoxDecoration(
              color: isAddButton ? ColorsManager.white : ColorsManager.OfWhite,
              shape: BoxShape.circle,
              border: Border.all(
                color: isAddButton
                    ? ColorsManager.med_grey
                    : ColorsManager.OfWhite,
                width: 1.0.w,
              ),
            ),
            child: isAddButton
                ? CircleAvatar(
                    backgroundColor: ColorsManager.white,
                    child: SvgPicture.asset(
                      AssetsResource.add_SVG,
                      width: 20.w,
                      height: 20.h,
                    ),
                  )
                : CircleAvatar(
                    backgroundColor: ColorsManager.OfWhite,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 4.h),
          child: TextWidget(
            text: name,
            fontsize: 12.sp,
            color: ColorsManager.black,
          ),
        ),
      ],
    );
  }
}
