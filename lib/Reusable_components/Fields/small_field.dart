import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Resources/color_resources.dart';
import '../../Resources/font_resources.dart';

class SmallField extends StatelessWidget {
  final String label;
  final String value;
  final String icon;
  final VoidCallback onTap;

  SmallField(
      {required this.label,
      required this.value,
      required this.onTap,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    {
      return InkWell(
        onTap: onTap,
        child: InputDecorator(
          decoration: InputDecoration(
            labelText: label,
            suffixIcon: ImageIcon(
              AssetImage(icon),
            ),
            labelStyle: TextStyle(fontFamily: FontResources.fontFamily),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0.r),
              borderSide: BorderSide(color: ColorsManager.med_grey),
            ),
          ),
          child: Container(
            height: 20.h,
            child: TextWidget(
              text: value,
              color: ColorsManager.black,
              fontsize: 14.sp,
            ),
          ),
        ),
      );
    }
    ;
  }
}
