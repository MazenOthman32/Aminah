import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChildrenSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            text: 'أطفال',
            color: ColorsManager.black,
          ),
          SizedBox(height: 10),
          Row(
            children: [
              ChildAvatar(name: 'أمير', image: AssetsResource.Kid_1_Png),
              SizedBox(width: 10),
              ChildAvatar(name: 'فريدة', image: AssetsResource.Kid_2_Png),
            ],
          ),
        ],
      ),
    );
  }
}

class ChildAvatar extends StatelessWidget {
  final String name;
  final String image;

  ChildAvatar({required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(image),
        ),
        SizedBox(height: 5),
        Text(name),
      ],
    );
  }
}
