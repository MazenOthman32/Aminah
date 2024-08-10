import 'package:amina/Models/day_order_model.dart';
import 'package:amina/Reusable_components/Buttons/round_button.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View_model/rating_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../View_model/round_button_view_model.dart';
import '../../../resources/assets_resources.dart';
import '../../../resources/color_resources.dart';
import 'info_view.dart';
import 'order_details_view.dart';
import 'rating_bottom_sheet.dart';

class RatingSelectionView extends StatelessWidget {
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
        imagePath: AssetsResource.FarahPng);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: FixedExtentScrollPhysics(),
          child: Column(children: [
            CurrentSelectedScreen(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
              child: Column(
                children: [
                  Consumer<RoundButtonViewModel>(
                    builder: (context, viewModel, child) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:
                              List.generate(viewModel.buttons.length, (index) {
                            final button = viewModel.buttons[index];
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                              child: RoundButton(
                                text: button.text,
                                isSelected: button.isSelected,
                                onPressed: () {
                                  viewModel.selectIndex(index);
                                },
                              ),
                            );
                          }),
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0.r),
                    child: SizedBox(
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TextWidget(
                                            text: dayOrder.name,
                                            color: ColorsManager.black,
                                            fontsize: 14.sp,
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.star_rounded,
                                                  color: ColorsManager
                                                      .RateStarsColor,
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
                                      SvgPicture.asset(
                                          AssetsResource.CalenderSVG),
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
                                  Divider(
                                    thickness: 3,
                                    color: ColorsManager.med_grey,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                      // TODO Dont Forget To Add The Icons -- >
                                      // SvgPicture.asset(AssetsResource.MapSVG),
                                      TextButton(
                                        onPressed: () async {
                                          await showModalBottomSheet<int>(
                                            context: context,
                                            builder: (context) =>
                                                RatingBottomSheet(),
                                          );
                                        },
                                        child: Text(
                                          'تقييم الخدمة',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      height: 210.h,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0.r),
                    child: SizedBox(
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TextWidget(
                                            text: dayOrder.name,
                                            color: ColorsManager.black,
                                            fontsize: 14.sp,
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.star_rounded,
                                                  color: ColorsManager
                                                      .RateStarsColor,
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
                                      SvgPicture.asset(
                                          AssetsResource.CalenderSVG),
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
                                  Consumer<RatingViewModel>(
                                    builder: (context, viewModel, child) {
                                      return Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: List.generate(5, (index) {
                                              return Icon(
                                                index < viewModel.rating
                                                    ? Icons.star
                                                    : Icons.star_border,
                                                color: ColorsManager.Secondery,
                                              );
                                            }),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      height: 180.h,
                      width: double.infinity,
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
