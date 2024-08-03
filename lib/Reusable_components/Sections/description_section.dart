import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescriptionSection extends StatelessWidget {
  final String description;
  DescriptionSection({
    required this.description,
  });
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            //  SvgPicture.asset(),
            Icon(Icons.work_sharp),
            SizedBox(
              width: 5.w,
            ),
            TextWidget(
              text: 'نبذة عني : ',
              color: ColorsManager.black,
              fontsize: 14.sp,
            ),
          ],
        ),
        SizedBox(height: 4.h),
        TextWidget(
          maxLines: 20,
          text: description,
          color: ColorsManager.black.withOpacity(.7),
          fontsize: 14.sp,
        ),
      ],
    );
  }
}
