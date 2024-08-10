import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View/Tameneni/Chat/chat_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

void communicationButtonSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 140.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildBottomSheetButton(context, AssetsResource.CallSVG, 'مكالمة',
                ColorsManager.primary, ColorsManager.primary),
            VerticalDivider(
              indent: 50,
              endIndent: 50,
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatView(),
                  )),
              child: _buildBottomSheetButton(context, AssetsResource.SMSSVG,
                  'محادثة', ColorsManager.med_grey, ColorsManager.Secondery),
            ),
          ],
        ),
      );
    },
  );
}

Widget _buildBottomSheetButton(BuildContext context, String image, String label,
    Color containerColor, Color imageColor) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      CircleAvatar(
        radius: 24.r,
        backgroundColor: containerColor.withOpacity(0.2),
        child: SvgPicture.asset(
          color: imageColor,
          image,
          width: 24.w,
          height: 24.h,
        ),
      ),
      SizedBox(height: 8.h),
      TextWidget(
        text: label,
        color: Colors.black,
      ),
    ],
  );
}
