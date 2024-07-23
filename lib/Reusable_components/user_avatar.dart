import 'package:amina/Resources/color_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserAvatar extends StatelessWidget {
  final String imagePath;
  final String name;
  final bool isAddButton;

  const UserAvatar({
    required this.imagePath,
    required this.name,
    this.isAddButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60.w,
          height: 60.h,
          decoration: BoxDecoration(
            color: isAddButton ? ColorsManager.OfWhite : Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.grey,
              width: 1.0.w,
            ),
          ),
          child: isAddButton
              ? Icon(Icons.add, size: 30.sp)
              : CircleAvatar(
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
        ),
        SizedBox(height: 8.h),
        Text(
          name,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
