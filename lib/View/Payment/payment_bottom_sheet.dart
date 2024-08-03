import 'package:amina/Resources/color_resources.dart';
import 'package:amina/View/Payment/another_payment_way_view.dart';
import '../../../../Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Reusable_components/Buttons/add_payment_method_button.dart';
import '../../Reusable_components/Buttons/large_button.dart';
import '../../Reusable_components/Helper_Widgets/credit_card_widget.dart';
import '../../Reusable_components/Items/payment_options.dart';
import '../../Reusable_components/Items/promo_code.dart';

class PaymentBottomSheet extends StatelessWidget {
  final String message;
  final String description;
  final String buttonMessage;
  final Function()? onTap;

  const PaymentBottomSheet({
    super.key,
    required this.buttonMessage,
    required this.message,
    required this.description,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16.0.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextWidget(
              color: ColorsManager.black,
              text: message,
              fontsize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 10.0.h),
            TextWidget(
              textAlign: TextAlign.center,
              maxLines: 4,
              text: description,
              color: ColorsManager.black,
              fontsize: 12.sp,
            ),
            SizedBox(
              height: 10.h,
            ),
            TextWidget(
              text: '500 ر.س',
              color: ColorsManager.black,
              fontsize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 16.0.h),
            PromoCodeComponent(),
            PaymentOptionsComponent(),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AddPaymentMethodButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MySample(),
                            //AnotherPaymentWayView(),
                          ));
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: SizedBox(
                width: double.infinity,
                child: LargeButton(
                  text: buttonMessage,
                  onPressed: onTap,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
