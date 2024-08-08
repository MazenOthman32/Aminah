import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FawaterView extends StatelessWidget {
  const FawaterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextWidget(
          text: 'الفواتير',
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: ColorsManager.backGroundColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0.r),
                      child: SvgPicture.asset(AssetsResource.FawaterSVG),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'طلب #22 - جليسة أطفال',
                        fontsize: 14.sp,
                        color: Colors.black,
                      ),
                      TextWidget(
                        text: 'الثلاثاء 5/2  -5:30 م',
                        fontsize: 12.sp,
                        color: Colors.black,
                      ),
                      TextWidget(
                        text: '250 - عملية ناجحة',
                        fontsize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border:
                                  Border.all(color: ColorsManager.med_grey)),
                          child: Padding(
                            padding: EdgeInsets.all(6.0.r),
                            child: Row(
                              children: [
                                TextWidget(
                                    fontsize: 12.sp,
                                    text: 'تحميل الفاتورة',
                                    color: Colors.black),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                indent: 60,
                endIndent: 10,
                color: ColorsManager.med_grey,
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: ColorsManager.backGroundColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0.r),
                      child: SvgPicture.asset(AssetsResource.FawaterSVG),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'طلب #22 - جليسة أطفال',
                        fontsize: 14.sp,
                        color: Colors.black,
                      ),
                      TextWidget(
                        text: 'الثلاثاء 5/2  -5:30 م',
                        fontsize: 12.sp,
                        color: Colors.black,
                      ),
                      TextWidget(
                        text: '250 - عملية ناجحة',
                        fontsize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border:
                                  Border.all(color: ColorsManager.med_grey)),
                          child: Padding(
                            padding: EdgeInsets.all(6.0.r),
                            child: Row(
                              children: [
                                TextWidget(
                                    fontsize: 12.sp,
                                    text: 'تحميل الفاتورة',
                                    color: Colors.black),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                indent: 60,
                endIndent: 10,
                color: ColorsManager.med_grey,
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: ColorsManager.backGroundColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0.r),
                      child: SvgPicture.asset(AssetsResource.FawaterSVG),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'طلب #22 - جليسة أطفال',
                        fontsize: 14.sp,
                        color: Colors.black,
                      ),
                      TextWidget(
                        text: 'الثلاثاء 5/2  -5:30 م',
                        fontsize: 12.sp,
                        color: Colors.black,
                      ),
                      TextWidget(
                        text: '250 - عملية ناجحة',
                        fontsize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border:
                                  Border.all(color: ColorsManager.med_grey)),
                          child: Padding(
                            padding: EdgeInsets.all(6.0.r),
                            child: Row(
                              children: [
                                TextWidget(
                                    fontsize: 12.sp,
                                    text: 'تحميل الفاتورة',
                                    color: Colors.black),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                indent: 60,
                endIndent: 10,
                color: ColorsManager.med_grey,
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: ColorsManager.backGroundColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0.r),
                      child: SvgPicture.asset(AssetsResource.FawaterSVG),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'طلب #22 - جليسة أطفال',
                        fontsize: 14.sp,
                        color: Colors.black,
                      ),
                      TextWidget(
                        text: 'الثلاثاء 5/2  -5:30 م',
                        fontsize: 12.sp,
                        color: Colors.black,
                      ),
                      TextWidget(
                        text: '250 - عملية ناجحة',
                        fontsize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border:
                                  Border.all(color: ColorsManager.med_grey)),
                          child: Padding(
                            padding: EdgeInsets.all(6.0.r),
                            child: Row(
                              children: [
                                TextWidget(
                                    fontsize: 12.sp,
                                    text: 'تحميل الفاتورة',
                                    color: Colors.black),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                indent: 60,
                endIndent: 10,
                color: ColorsManager.med_grey,
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: ColorsManager.backGroundColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0.r),
                      child: SvgPicture.asset(AssetsResource.FawaterSVG),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'طلب #22 - جليسة أطفال',
                        fontsize: 14.sp,
                        color: Colors.black,
                      ),
                      TextWidget(
                        text: 'الثلاثاء 5/2  -5:30 م',
                        fontsize: 12.sp,
                        color: Colors.black,
                      ),
                      TextWidget(
                        text: '250 - عملية ناجحة',
                        fontsize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border:
                                  Border.all(color: ColorsManager.med_grey)),
                          child: Padding(
                            padding: EdgeInsets.all(6.0.r),
                            child: Row(
                              children: [
                                TextWidget(
                                    fontsize: 12.sp,
                                    text: 'تحميل الفاتورة',
                                    color: Colors.black),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                indent: 60,
                endIndent: 10,
                color: ColorsManager.med_grey,
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: ColorsManager.backGroundColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0.r),
                      child: SvgPicture.asset(AssetsResource.FawaterSVG),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'طلب #22 - جليسة أطفال',
                        fontsize: 14.sp,
                        color: Colors.black,
                      ),
                      TextWidget(
                        text: 'الثلاثاء 5/2  -5:30 م',
                        fontsize: 12.sp,
                        color: Colors.black,
                      ),
                      TextWidget(
                        text: '250 - عملية ناجحة',
                        fontsize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border:
                                  Border.all(color: ColorsManager.med_grey)),
                          child: Padding(
                            padding: EdgeInsets.all(6.0.r),
                            child: Row(
                              children: [
                                TextWidget(
                                    fontsize: 12.sp,
                                    text: 'تحميل الفاتورة',
                                    color: Colors.black),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                indent: 60,
                endIndent: 10,
                color: ColorsManager.med_grey,
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: ColorsManager.backGroundColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0.r),
                      child: SvgPicture.asset(AssetsResource.FawaterSVG),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'طلب #22 - جليسة أطفال',
                        fontsize: 14.sp,
                        color: Colors.black,
                      ),
                      TextWidget(
                        text: 'الثلاثاء 5/2  -5:30 م',
                        fontsize: 12.sp,
                        color: Colors.black,
                      ),
                      TextWidget(
                        text: '250 - عملية ناجحة',
                        fontsize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border:
                                  Border.all(color: ColorsManager.med_grey)),
                          child: Padding(
                            padding: EdgeInsets.all(6.0.r),
                            child: Row(
                              children: [
                                TextWidget(
                                    fontsize: 12.sp,
                                    text: 'تحميل الفاتورة',
                                    color: Colors.black),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                indent: 60,
                endIndent: 10,
                color: ColorsManager.med_grey,
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: ColorsManager.backGroundColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0.r),
                      child: SvgPicture.asset(AssetsResource.FawaterSVG),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'طلب #22 - جليسة أطفال',
                        fontsize: 14.sp,
                        color: Colors.black,
                      ),
                      TextWidget(
                        text: 'الثلاثاء 5/2  -5:30 م',
                        fontsize: 12.sp,
                        color: Colors.black,
                      ),
                      TextWidget(
                        text: '250 - عملية ناجحة',
                        fontsize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border:
                                  Border.all(color: ColorsManager.med_grey)),
                          child: Padding(
                            padding: EdgeInsets.all(6.0.r),
                            child: Row(
                              children: [
                                TextWidget(
                                    fontsize: 12.sp,
                                    text: 'تحميل الفاتورة',
                                    color: Colors.black),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                indent: 60,
                endIndent: 10,
                color: ColorsManager.med_grey,
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: ColorsManager.backGroundColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0.r),
                      child: SvgPicture.asset(AssetsResource.FawaterSVG),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'طلب #22 - جليسة أطفال',
                        fontsize: 14.sp,
                        color: Colors.black,
                      ),
                      TextWidget(
                        text: 'الثلاثاء 5/2  -5:30 م',
                        fontsize: 12.sp,
                        color: Colors.black,
                      ),
                      TextWidget(
                        text: '250 - عملية ناجحة',
                        fontsize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border:
                                  Border.all(color: ColorsManager.med_grey)),
                          child: Padding(
                            padding: EdgeInsets.all(6.0.r),
                            child: Row(
                              children: [
                                TextWidget(
                                    fontsize: 12.sp,
                                    text: 'تحميل الفاتورة',
                                    color: Colors.black),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                indent: 60,
                endIndent: 10,
                color: ColorsManager.med_grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
