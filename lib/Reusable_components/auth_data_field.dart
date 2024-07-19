import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Resources/font_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthDataField extends StatelessWidget {
  String fieldSentence;
  TextInputType? keyBoardType;
  bool autoFocus;
  final String? Function(String?)? validator;
  AuthDataField({
    super.key,
    required this.fieldSentence,
    this.keyBoardType = TextInputType.text,
    this.autoFocus = false,
    this.validator,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      autofocus: autoFocus,
      textAlign: TextAlign.right,
      maxLines: 1,
      keyboardType: keyBoardType,
      decoration: InputDecoration(
        hintStyle: TextStyle(
          fontFamily: FontResources.fontFamily,
          color: ColorsManager.AuthDataFieldHint,
        ),
        hintText: fieldSentence,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.AuthDataFieldBorder),
          borderRadius: BorderRadius.circular(
            6.r,
          ),
        ),
      ),
    );
  }
}
