import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void communicationButtonSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 140.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildBottomSheetButton(
              context,
              Icons.call,
              'مكالمة',
              ColorsManager.primary,
            ),
            VerticalDivider(
              indent: 50,
              endIndent: 50,
            ),
            _buildBottomSheetButton(
              context,
              Icons.chat_bubble_outline,
              'محادثة',
              ColorsManager.Secondery,
            ),
          ],
        ),
      );
    },
  );
}

Widget _buildBottomSheetButton(
    BuildContext context, IconData icon, String label, Color color) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      CircleAvatar(
        radius: 24.r,
        backgroundColor: color.withOpacity(0.2),
        child: Icon(
          icon,
          size: 24.r,
          color: color,
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
