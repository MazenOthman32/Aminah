import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Buttons/Back_Button.dart';
import 'package:amina/View/home/Baby_Sitter_Info/baby_sitter_profile_view.dart';
import 'package:amina/View/home/Talabaty/childern_section.dart';
import 'package:amina/View/home/Talabaty/order_tracking_view.dart';
import 'package:amina/View/home/Talabaty/profile_bottom_sheet.dart';
import 'package:amina/View/home/Talabaty/report_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../Models/day_order_model.dart';
import '../../../Reusable_components/Helper_Widgets/text_widget.dart';
import 'comunication_button_sheet.dart';
import 'order_info_section.dart';
import 'order_tracker_location.dart';

class OrderDetailsView extends StatelessWidget {
  @override
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
      imagePath: AssetsResource.FarahPng);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: CustomBackButton(),
        centerTitle: true,
        title: TextWidget(
          text: 'تفاصيل الطلب',
          color: ColorsManager.black,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: 'طلب رقم #22 - جليسة أطفال',
                  color: ColorsManager.black,
                ),
              ],
            ),
            SizedBox(height: 5.h),
            TextWidget(
              text: 'الثلاثاء 5/2 5:30 م',
              color: ColorsManager.black,
              fontsize: 12.sp,
            ),
            SizedBox(height: 20.h),
            SizedBox(
              child: Container(
                padding: EdgeInsets.all(16.0.r),
                decoration: BoxDecoration(
                  border: Border.all(color: ColorsManager.med_grey),
                  borderRadius: BorderRadius.circular(16.0.r),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage(AssetsResource.FarahPng),
                              radius: 24.0.r,
                            ),
                            SizedBox(width: 10.0.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: 'فرح يوسف',
                                  color: ColorsManager.black,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 16.0),
                                    SizedBox(width: 4.0),
                                    TextWidget(
                                      text: '4.6',
                                      color: ColorsManager.black,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            ReportBottomSheet(context);
                          },
                          icon: ImageIcon(
                            color: ColorsManager.black,
                            AssetImage(AssetsResource.DotsPng),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0.h),
                    Divider(
                      color: ColorsManager.med_grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton.icon(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      OrderTrackerLocationView(),
                                ));
                          },
                          icon: SvgPicture.asset(
                            AssetsResource.MapSVG,
                            height: 16.h,
                          ),
                          label: TextWidget(
                            text: 'تبع على الخريطة',
                            color: ColorsManager.black,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            communicationButtonSheet(context);
                          },
                          child: TextWidget(
                              text: 'تواصل', color: ColorsManager.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              height: 150.h,
              width: double.infinity,
            ),
            SizedBox(height: 20),
            ChildrenSection(),
            SizedBox(height: 20),
            OrderInfoSection(),
            SizedBox(height: 20),
            Divider(
              thickness: 3,
              color: ColorsManager.med_grey,
            ),
            OrderTrackingView(),
          ],
        ),
      ),
    );
  }
}
