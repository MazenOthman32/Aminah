import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImagesCard extends StatelessWidget {
  final String image;
  double width;
  double height;
  ImagesCard({required this.image, required this.width, required this.height});
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0.w),
          child: Image.asset(
            image,
            width: width,
            height: height,
          ),
        ),
      ],
    );
  }
}
