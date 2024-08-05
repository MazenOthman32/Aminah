import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  RoundButton({
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 12.w),
        decoration: BoxDecoration(
          color: isSelected ? ColorsManager.primary : Colors.white,
          border: Border.all(
              color: isSelected ? ColorsManager.primary : ColorsManager.grey),
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: TextWidget(
          text: text,
          color: isSelected ? ColorsManager.white : ColorsManager.black,
        ),
      ),
    );
  }
}
