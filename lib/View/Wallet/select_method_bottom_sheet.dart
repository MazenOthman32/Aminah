import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Bottom_Sheets/bottom_sheet.dart';
import 'package:amina/Reusable_components/Bottom_Sheets/confirm_bottom_sheet.dart';
import 'package:amina/View/Wallet/my_wallet_view.dart';
import 'package:amina/View/home/bottom_navbar_view.dart';
import 'package:amina/View_model/payment_view_model.dart';
import 'package:provider/provider.dart';
import '../../../../Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Reusable_components/Buttons/add_payment_method_button.dart';
import '../../Reusable_components/Buttons/large_button.dart';
import '../../Reusable_components/Helper_Widgets/credit_card_widget.dart';
import '../../Reusable_components/Items/payment_options.dart';
import '../../Reusable_components/Items/promo_code.dart';

class SelectMethodBottomSheet extends StatelessWidget {
  final String message;
  final String buttonMessage;
  final Function()? onTap;

  const SelectMethodBottomSheet({
    super.key,
    required this.buttonMessage,
    required this.message,
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
              maxLines: 2,
              text: message,
              fontsize: 16.sp,
              fontWeight: FontWeight.bold,
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
            PaymentOption(
              label: 'xxx 565 5656',
              value: 'mastercard',
              groupValue:
                  context.watch<PaymentViewModel>().selectedPaymentMethod,
              onChanged: (value) {
                context.read<PaymentViewModel>().setPaymentMethod(value!);
              },
              icon: AssetsResource.MasterCardPNG,
            ),
            PaymentOption(
              label: 'xxx 565 5656',
              value: 'visa',
              groupValue:
                  context.watch<PaymentViewModel>().selectedPaymentMethod,
              onChanged: (value) {
                context.read<PaymentViewModel>().setPaymentMethod(value!);
              },
              icon: AssetsResource.VisaPNG,
            ),
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
                    onPressed: () {
                      Navigator.pop(context);
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => ConfirmButtonSheet(
                          buttonMessage_1: 'المحفظة',
                          message: "تم سحب المبلغ بنجاح!",
                          Description:
                              "تم سحب المبلغ بنجاح لمحفظتك الإلكترونية",
                          targetScreen_1: WalletView(),
                          buttonMessage_2: 'الصفحة الرئيسية',
                          targetScreen_2: BottomNavBarView(),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(16.0)),
                        ),
                        isScrollControlled: true,
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
