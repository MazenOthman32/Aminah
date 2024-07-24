import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Resources/font_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final int maxLines;
  final TextAlign textAlign;
  final String fontfamily;
  final Color color;
  final double fontsize;
  final TextStyle? textStyle;
  final FontWeight fontWeight;

  const TextWidget(
      {super.key,
      required this.text,
      this.maxLines = 1,
      this.textAlign = TextAlign.start,
      this.fontfamily = FontResources.fontFamily,
      this.color = ColorsManager.white,
      this.fontsize = 16,
      this.textStyle,
      this.fontWeight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle ??
          TextStyle(
            fontFamily: fontfamily,
            fontSize: fontsize,
            color: color,
            fontWeight: fontWeight,
          ),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
