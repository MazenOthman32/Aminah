import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/Reusable_components/Items/number_of_offers.dart';
import 'package:amina/View/home/Offers/offer_section_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../resources/color_resources.dart';
import 'childern_section.dart';
import 'order_action.dart';
import 'order_details_view.dart';
import 'order_info_section.dart';

class OrderDetailsActions extends StatelessWidget {
  const OrderDetailsActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextWidget(text: 'تفاصيل الطلب', color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 5.h),
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
              OfferButton(
                numberOfOffers: 4,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OfferSectionView(),
                      ));
                },
              ),
              OrderActions(),
              SizedBox(height: 20),
              ChildrenSection(),
              SizedBox(height: 20),
              OrderInfoSection(),
            ],
          ),
        ),
      ),
    );
  }
}
