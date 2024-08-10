import 'package:amina/Models/day_order_model.dart';
import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View/home/Talabaty/order_details_view.dart';
import 'package:amina/View/home/Talabaty/order_tracker_location.dart';
import 'package:amina/View/home/Talabaty/report_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../Resources/color_resources.dart';
import '../../Resources/string_resources.dart';
import '../../View/home/Talabaty/comunication_button_sheet.dart';

class DayOrderCard extends StatelessWidget {
  final DayOrderModel dayOrder;
  const DayOrderCard({required this.dayOrder});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OrderDetailsView(),
              ));
        },
        child: Card(
          color: ColorsManager.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0.r),
            side: BorderSide(
              color: ColorsManager.med_grey,
              style: BorderStyle.solid,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(10.0.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(dayOrder.imagePath),
                      radius: 21.r,
                    ),
                    SizedBox(width: 8.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: dayOrder.name,
                          color: ColorsManager.black,
                          fontsize: 14.sp,
                        ),
                        Row(
                          children: [
                            Icon(Icons.star_rounded,
                                color: ColorsManager.RateStarsColor,
                                size: 21.r),
                            TextWidget(
                              text: '${dayOrder.rating}',
                              color: ColorsManager.black,
                              fontsize: 14.sp,
                            )
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: dayOrder.status
                            ? ColorsManager.backGroundColor
                            : ColorsManager.Secondery,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: TextWidget(
                          text: dayOrder.status
                              ? StringsManager.OrderStatusSucsses
                              : StringsManager.OrderStatusInvalid,
                          color: dayOrder.status
                              ? ColorsManager.primary
                              : ColorsManager.white),
                    ),
                    IconButton(
                      onPressed: () {
                        ReportBottomSheet(context);
                      },
                      icon: ImageIcon(
                        AssetImage(AssetsResource.DotsPng),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset(AssetsResource.LayerSVG),
                    TextWidget(
                      text:
                          'طلب #${dayOrder.orderNumber} - ${dayOrder.orderType}',
                      color: ColorsManager.black,
                      fontsize: 12.sp,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                Row(
                  children: [
                    SvgPicture.asset(AssetsResource.CalenderSVG),
                    SizedBox(width: 5.w),
                    TextWidget(
                      text: '${dayOrder.timeFrom} - ${dayOrder.timeTo}',
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
                      text:
                          '${dayOrder.paymentStatus} - ${dayOrder.paymentAmount.toString()} رس',
                      color: ColorsManager.black,
                      fontsize: 12.sp,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Divider(),
                IntrinsicHeight(
                  // Added IntrinsicHeight here
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      SvgPicture.asset(AssetsResource.MapSVG),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    OrderTrackerLocationView(),
                              ));
                        },
                        child: TextWidget(
                          text: 'تتبع على الخريطة',
                          color: ColorsManager.black,
                          fontsize: 14.sp,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                        child: VerticalDivider(
                          indent: 7,
                          endIndent: 7,
                          color: ColorsManager
                              .med_grey, // Set color for visibility
                          thickness: 1, // Set thickness
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 25.0.w),
                        child: TextButton(
                          onPressed: () {
                            communicationButtonSheet(context);
                          },
                          child: TextWidget(
                            text: 'تواصل',
                            color: ColorsManager.black,
                            fontsize: 14.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
