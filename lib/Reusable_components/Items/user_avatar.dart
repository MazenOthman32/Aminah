import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View/home/Add_New_child/child_info_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserAvatar extends StatelessWidget {
  final String imagePath;
  final String name;
  final bool isAddButton;
  final Function() onTap;

  UserAvatar({
    required this.imagePath,
    required this.name,
    this.isAddButton = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: isAddButton != false
              ? onTap
              : () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => ChildInfoBottomSheet(),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(16.0.r)),
                    ),
                    isScrollControlled: true,
                  );
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
