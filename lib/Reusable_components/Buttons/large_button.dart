import 'package:amina/Resources/font_resources.dart';
import '../../../../Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import '../../resources/color_resources.dart';

class LargeButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color buttonColor;
  final Color fontColor;
  final double topPadding;
  final double bottomPadding;
  final double leftPadding;
  final double rightPadding;
  final double? fontSize;
  final double? borderRadius;
  final String fontFamily;
  const LargeButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.fontColor = ColorsManager.white,
    this.buttonColor = ColorsManager.primary,
    this.fontSize,
    this.borderRadius,
    this.topPadding = 0,
    this.bottomPadding = 0,
    this.leftPadding = 0,
    this.rightPadding = 0,
    this.fontFamily = FontResources.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.w,
      height: 50.h,
      child: Padding(
        padding: EdgeInsets.only(
          top: topPadding,
          right: rightPadding,
          left: leftPadding,
          bottom: bottomPadding,
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
            ),
          ),
          onPressed: onPressed,
          child: Align(
            alignment: AlignmentDirectional.center,
            child: TextWidget(
                text: text,
                textAlign: TextAlign.center,
                textStyle: TextStyle(
                  fontSize: fontSize,
                  color: fontColor,
                  fontFamily: fontFamily,
                )),
          ),
        ),
      ),
    );
  }
}
