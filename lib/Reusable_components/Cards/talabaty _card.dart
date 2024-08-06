import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View/home/Talabaty/edit_order_bottom_sheet.dart';
import 'package:amina/View/home/Talabaty/order_details_actions.dart';
import 'package:amina/View/home/Talabaty/report_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../Resources/assets_resources.dart';
import '../../View/home/Offers/offer_section_view.dart';

class TalabatyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OrderDetailsActions(),
            ));
      },
      child: Container(
        padding: EdgeInsets.all(8.r),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: ColorsManager.med_grey),
        ),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(AssetsResource.LayerSVG),
                TextWidget(
                  text: 'طلب #${22} - جليسة أطفال ',
                  color: ColorsManager.black,
                  fontsize: 12.sp,
                ),
                Spacer(),
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: ColorsManager.backGroundColor,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OfferSectionView(),
                              ));
                        },
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OfferSectionView(),
                                ));
                          },
                          child: Row(
                            children: [
                              TextWidget(
                                  text: " 4 عروض",
                                  color: ColorsManager.primary),
                              Icon(
                                Icons.keyboard_double_arrow_left_sharp,
                                color: ColorsManager.primary,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => EditOrderBottomSheet(),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(16.0)),
                          ),
                          isScrollControlled: true,
                        );
                      },
                      icon: ImageIcon(
                        AssetImage(AssetsResource.DotsPng),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 5.h),
            Row(
              children: [
                SvgPicture.asset(AssetsResource.CalenderSVG),
                SizedBox(width: 5.w),
                TextWidget(
                  text: '${5.30} - ${8.30}',
                  color: ColorsManager.black,
                  fontsize: 12.sp,
                ),
              ],
            ),
            SizedBox(height: 5.h),
            Row(
              children: [
                SvgPicture.asset(AssetsResource.MoneySVG),
                SizedBox(width: 5.w),
                TextWidget(
                  text: 'تم الدفع  - ${500} رس',
                  color: ColorsManager.black,
                  fontsize: 12.sp,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
