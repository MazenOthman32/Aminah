import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/color_resources.dart';
import 'package:amina/View/home/Talabaty/childern_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../Models/day_order_model.dart';
import '../../../Reusable_components/Helper_Widgets/text_widget.dart';
import 'order_info_section.dart';

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
      imagePath: AssetsResource.User_Png);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                        IconButton(
                          onPressed: () {},
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
                          onPressed: () {},
                          icon: Icon(
                            Icons.map,
                            color: ColorsManager.black,
                          ),
                          label: TextWidget(
                            text: 'تبع على الخريطة',
                            color: ColorsManager.black,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
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
            ServiceStatus(),
          ],
        ),
      ),
    );
  }
}

class ServiceStatus extends StatelessWidget {
  final List<Map<String, dynamic>> steps = [
    {"title": "تم تأكيد الطلب", "completed": true},
    {"title": "لقد وصلت الجلسة", "completed": true},
    {"title": "بداية الخدمة", "completed": false},
    {"title": "نهاية الخدمة", "completed": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: steps.map((step) {
          return StepTile(
            title: step['title'],
            completed: step['completed'],
          );
        }).toList(),
      ),
    );
  }
}

class StepTile extends StatelessWidget {
  final String title;
  final bool completed;

  StepTile({required this.title, required this.completed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 10,
              backgroundColor: completed ? Colors.cyan : Colors.grey,
            ),
            if (!completed)
              Container(
                height: 40,
                width: 2,
                color: Colors.grey,
              ),
          ],
        ),
        SizedBox(width: 8),
        Text(title),
      ],
    );
  }
}
