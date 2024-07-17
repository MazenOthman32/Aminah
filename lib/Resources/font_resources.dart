import 'package:flutter/material.dart';

class FontResources {
  static const String fontFamily = 'Inter';
}

// Manages font weight for every type of the font family.
class FontWeightManager {
  static const FontWeight light = FontWeight.w200;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w900;
}

// Manages font sizes all around the application.
class FontSize {
  static const double fs10 = 10.0; // Tiny Text
  static const double superTiny = 10; // Tiny Text
  static const double tinyText = 11; // Tiny Text
  static const double smallText = 12; // Small Text
  static const double kindaSmall = 13; // Sub-Title - Regular Text
  static const double regular = 14; // Sub-Title - Regular Text
  static const double medium = 15;
  static const double subTitle = 16.5; // Sub-Title - Regular Text

  static const double title = 19; // Title
  static const double kindaHuge = 20.0; // Large Text
  static const double huge = 23.0; // Huge Text
  static const double fs25 = 25.0; // Huge Text
}
