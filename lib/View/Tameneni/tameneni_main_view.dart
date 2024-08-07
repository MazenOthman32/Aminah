import 'package:amina/Models/day_order_model.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View/Tameneni/tamenini_button.dart';
import 'package:amina/View/Tameneni/tamenini_order_details.dart';
import 'package:amina/View/Tameneni/timer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../Resources/assets_resources.dart';
import '../../Resources/color_resources.dart';
import '../home/Talabaty/order_details_view.dart';
import '../home/Talabaty/report_bottom_sheet.dart';
import 'extend_time_bottom_sheet.dart';
import 'tamenini_bottom_sheet.dart';

class TameneniMainView extends StatelessWidget {
  const TameneniMainView({super.key});

  @override
  Widget build(BuildContext context) {
    final DayOrderModel dayOrder = DayOrderModel(
        name: 'فرح يوسف',
        rating: 4.6,
        status: true,
        orderNumber: 22,
        orderType: "جليسة أطفال",
        timeFrom: 5.30,
        timeTo: 8.30,
        paymentStatus: "تم الدفع",
        paymentAmount: 500,
        imagePath: AssetsResource.User_Png);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.r),
          child: Column(
            children: [
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => TameniniBottomSheet(),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(16.0.r)),
                        ),
                        isScrollControlled: true,
                      );
                    },
                    child: Row(
                      children: [
                        TextWidget(
                          text: 'طمنيني',
                          color: Colors.black,
                          fontsize: 14.sp,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Icon(Icons.arrow_drop_down_outlined),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderDetailsView(),
                        ));
                  },
                  child: Container(
                    child: Card(
                      color: Colors.white,
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
                                  backgroundImage:
                                      AssetImage(dayOrder.imagePath),
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
                                  text:
                                      '${dayOrder.timeFrom} - ${dayOrder.timeTo}',
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
                            TimerWidget(
                              text: 'نمديد الوقت',
                              onTap: () {
                                showBottomSheet(
                                  context: context,
                                  builder: (context) => ExtendTimeBottomSheet(),
                                );
                              },
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                              TameniniOrderDetails(),
                                        ));
                                  },
                                  child: TextWidget(
                                    text: 'تتبع على الخريطة',
                                    color: ColorsManager.black,
                                    fontsize: 14.sp,
                                  ),
                                ),
                                VerticalDivider(),
                                TameniniButton(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                height: 250.h,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
