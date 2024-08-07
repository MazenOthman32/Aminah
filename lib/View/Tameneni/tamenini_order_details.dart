import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View/Tameneni/tamenini_button.dart';
import 'package:amina/View/Tameneni/timer_widget.dart';
import 'package:amina/View/home/Talabaty/comunication_button_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Resources/assets_resources.dart';
import 'extend_time_bottom_sheet.dart';

class TameniniOrderDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextWidget(
          text: 'تتبع الجليسة',
          color: ColorsManager.black,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0.h),
              child: TextWidget(
                text: 'طلب رقم #22 - جليسة أطفال',
                color: ColorsManager.black,
              ),
            ),
            SizedBox(height: 5.h),
            Container(
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
                                AssetImage(AssetsResource.User_Png),
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
                      TameniniButton(),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0.h),
                child: TimerWidget(
                  text: "تمديد الجلسة",
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => ExtendTimeBottomSheet(),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16.0)),
                      ),
                      isScrollControlled: true,
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
