import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'color_resources.dart';
import 'package:flutter/material.dart';
import 'font_resources.dart';

// General Style
TextStyle _getTextStyle({
  required double fontSize,
  required FontWeight fontWeight,
  Color color = ColorsManager.black,
}) {
  return TextStyle(
    height: 1.2,
    fontSize: fontSize,
    fontWeight: fontWeight,
    letterSpacing: 0.1,
    color: color,
    // fontFamily: FontResources.fontFamily,
  );
}

//Light Style
TextStyle getLightStyle({
  double fontSize = FontSize.smallText,
  Color color = ColorsManager.black,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: FontWeightManager.light,
  );
}

//Medium Style
TextStyle getMediumStyle({
  double fontSize = FontSize.regular,
  Color color = ColorsManager.black,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: FontWeightManager.medium,
  );
}

//Regular Style
TextStyle getRegularStyle({
  double fontSize = FontSize.regular,
  Color color = ColorsManager.black,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: FontWeightManager.regular,
  );
}

//Semi Bold Style
TextStyle getSemiBoldStyle({
  double fontSize = FontSize.regular,
  Color color = ColorsManager.black,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: FontWeightManager.semiBold,
  );
}

//Bold Style
TextStyle getBoldStyle({
  double fontSize = FontSize.regular,
  Color color = ColorsManager.black,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: FontWeightManager.bold,
  );
}
