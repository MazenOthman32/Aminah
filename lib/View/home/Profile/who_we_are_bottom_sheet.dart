import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../resources/color_resources.dart';

class WhoWeAreBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              AssetsResource.LogoSVG, // Correct path to your logo asset
              height: 40.h,
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: Row(
                children: [
                  TextWidget(
                    maxLines: 4,
                    text: ' عن أمينة :',
                    textAlign: TextAlign.start,
                    fontsize: 14.sp,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: Row(
                children: [
                  Flexible(
                    child: TextWidget(
                      maxLines: 8,
                      text:
                          'ذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.',
                      textAlign: TextAlign.start,
                      fontsize: 14.sp,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: Row(
                children: [
                  TextWidget(
                    maxLines: 4,
                    text: ' شركاء النجاح :',
                    textAlign: TextAlign.start,
                    fontsize: 14.sp,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 100.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: ColorsManager.grey,
                      ),
                    ),
                    child: Image.asset(AssetsResource.Sponser_1_PNG),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    width: 100.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: ColorsManager.grey,
                      ),
                    ),
                    child: Image.asset(AssetsResource.Sponser_2_PNG),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    width: 100.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: ColorsManager.grey,
                      ),
                    ),
                    child: Image.asset(AssetsResource.Sponser_3_PNG),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: Row(
                children: [
                  TextWidget(
                    maxLines: 4,
                    text: 'آراء عملاؤنا',
                    textAlign: TextAlign.start,
                    fontsize: 14.sp,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0.h),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 15.h),
                      width: 250.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(
                          color: ColorsManager.grey,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextWidget(
                            maxLines: 10,
                            text:
                                '“ ذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية”',
                            fontsize: 12.sp,
                            color: Colors.black,
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage(AssetsResource.ManPNG),
                              ),
                              SizedBox(
                                width: 10.h,
                              ),
                              TextWidget(
                                text: 'نور مدحت',
                                color: Colors.black,
                                fontsize: 12.sp,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 15.h),
                      width: 250.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(
                          color: ColorsManager.grey,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextWidget(
                            maxLines: 10,
                            text:
                                '“ ذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية”',
                            fontsize: 12.sp,
                            color: Colors.black,
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage(AssetsResource.ManPNG),
                              ),
                              SizedBox(
                                width: 10.h,
                              ),
                              TextWidget(
                                text: 'نور مدحت',
                                color: Colors.black,
                                fontsize: 12.sp,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 15.h),
                      width: 250.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(
                          color: ColorsManager.grey,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextWidget(
                            maxLines: 10,
                            text:
                                '“ ذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية”',
                            fontsize: 12.sp,
                            color: Colors.black,
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage(AssetsResource.ManPNG),
                              ),
                              SizedBox(
                                width: 10.h,
                              ),
                              TextWidget(
                                text: 'نور مدحت',
                                color: Colors.black,
                                fontsize: 12.sp,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
