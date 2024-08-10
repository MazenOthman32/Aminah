import 'package:amina/Resources/assets_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: CircleAvatar(
        child: SvgPicture.asset(AssetsResource.BackArrowSvg),
        radius: 10.r,
        backgroundColor: Colors.white,
      ),
    );
  }
}
