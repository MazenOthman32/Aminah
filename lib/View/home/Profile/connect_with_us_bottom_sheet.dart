import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Reusable_components/Buttons/large_button.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View/home/Talabaty/comunication_button_sheet.dart';
import 'package:amina/View/home/Talabaty/rating_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../resources/color_resources.dart';

class ContactBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            AssetsResource.LogoSVG, // Correct path to your logo asset
            height: 40.h,
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: SvgPicture.asset(AssetsResource.LinkedInSVG),
                    width: 40.w,
                    height: 40.h,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: SvgPicture.asset(AssetsResource.InstegramSVG),
                    width: 40.w,
                    height: 40.h,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: SvgPicture.asset(AssetsResource.YoutubeSVG),
                    width: 40.w,
                    height: 40.h,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: SvgPicture.asset(AssetsResource.TwitterSVG),
                    width: 40.w,
                    height: 40.h,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: SvgPicture.asset(AssetsResource.SnapchatSVG),
                    width: 40.w,
                    height: 40.h,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0.r),
            child: TextWidget(
              maxLines: 4,
              text:
                  'نحن هنا دائماً لدعمك وتلبية احتياجاتك، لذا لا تتردد في الاتصال بنا إذا كان هناك أي شيء نستطيع مساعدتك به.',
              textAlign: TextAlign.center,
              fontsize: 12.sp,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2.5,
                padding: EdgeInsets.all(20.r),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: ColorsManager.med_grey)),
                child: Column(
                  children: [
                    Icon(Icons.phone, color: ColorsManager.primary),
                    SizedBox(height: 2.h),
                    TextWidget(
                      text: '09665599798',
                      fontsize: 10.sp,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2.5,
                padding: EdgeInsets.all(20.r),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: ColorsManager.med_grey)),
                child: Column(
                  children: [
                    Icon(Icons.email, color: ColorsManager.primary),
                    SizedBox(height: 2.h),
                    TextWidget(
                      text: 'info@syntech.com',
                      fontsize: 10.sp,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w),
            child: SizedBox(
              width: double.infinity,
              child: LargeButton(
                image: AssetsResource.WhatsAppSVG,
                text: 'تواصل معنا',
                onPressed: () {
                  Navigator.pop(context);
                  communicationButtonSheet(context);
                },
              ),
            ),
          ),
          SizedBox(height: 15.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: ColorsManager.med_grey, width: 1.w),
              ),
              child: LargeButton(
                text: 'تقييم خدمة التطبيق',
                onPressed: () {
                  Navigator.pop(context);
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => RatingBottomSheet(),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(16.0.r)),
                    ),
                    isScrollControlled: true,
                  );
                },
                buttonColor: Colors.white,
                fontColor: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
