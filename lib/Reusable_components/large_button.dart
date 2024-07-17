import 'package:amina/reusable_components/text_widget.dart';
import '../../resources/text_style_resources.dart';
import 'package:flutter/material.dart';
import '../resources/color_resources.dart';

class LargeButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color buttonColor;
  final Color fontColor;
  final double fontSize;
  final double borderRadius;

  const LargeButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.fontColor = Colors.white,
    this.buttonColor = ColorsManager.primary,
    this.fontSize = 15,
    this.borderRadius = 12,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          onPressed: onPressed,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Align(
              alignment: AlignmentDirectional.center,
              child: TextWidget(
                text: text,
                textAlign: TextAlign.center,
                textStyle: getSemiBoldStyle(
                  fontSize: fontSize,
                  color: fontColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
