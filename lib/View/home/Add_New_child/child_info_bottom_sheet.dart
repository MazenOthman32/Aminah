import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Reusable_components/Buttons/large_button.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View/home/Add_New_child/add_new_child.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChildInfoBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 4.h,
            width: 40.w,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(2.r),
            ),
          ),
          SizedBox(height: 10.h),
          CircleAvatar(
            radius: 30.r,
            backgroundImage: AssetImage(
                AssetsResource.Kid_1_Png), // Add the correct path to your image
          ),
          SizedBox(height: 10.h),
          TextWidget(
            text: 'أمير أحمد محمد',
            fontsize: 14.sp,
            color: Colors.black,
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.h),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          AssetsResource.PersonSVG,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        TextWidget(
                          text: '3 سنوات',
                          color: Colors.black,
                          fontsize: 14.sp,
                        ),
                      ],
                    ),
                    VerticalDivider(),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AssetsResource.MaleSignSVG,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        TextWidget(
                          text: 'ذكر',
                          color: Colors.black,
                          fontsize: 14.sp,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Icon(
                Icons.lock,
                size: 18.sp,
                color: Colors.grey,
              ),
              SizedBox(width: 10.w),
              TextWidget(
                text: 'لا يوجد مشاكل صحية',
                fontsize: 14.sp,
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Icon(
                Icons.notes,
                size: 18.sp,
                color: Colors.grey,
              ),
              SizedBox(width: 10.w),
              TextWidget(
                text: 'ملاحظات',
                fontsize: 14.sp,
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w),
            child: SizedBox(
              width: double.infinity,
              child: LargeButton(
                  text: 'تعديل',
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddNewChildView(),
                        ));
                  }),
            ),
          )
        ],
      ),
    );
  }
}
