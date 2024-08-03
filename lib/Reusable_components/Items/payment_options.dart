import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../View_model/payment_view_model.dart';

class PaymentOptionsComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PaymentOption(
          label: 'كاش',
          value: 'cash',
          groupValue: context.watch<PaymentViewModel>().selectedPaymentMethod,
          onChanged: (value) {
            context.read<PaymentViewModel>().setPaymentMethod(value!);
          },
          icon: AssetsResource.CashPNG,
        ),
        PaymentOption(
          label: 'ماستر كارد',
          value: 'mastercard',
          groupValue: context.watch<PaymentViewModel>().selectedPaymentMethod,
          onChanged: (value) {
            context.read<PaymentViewModel>().setPaymentMethod(value!);
          },
          icon: AssetsResource.MasterCardPNG,
        ),
        PaymentOption(
          label: 'فيزا',
          value: 'visa',
          groupValue: context.watch<PaymentViewModel>().selectedPaymentMethod,
          onChanged: (value) {
            context.read<PaymentViewModel>().setPaymentMethod(value!);
          },
          icon: AssetsResource.VisaPNG,
        ),
        // Add more payment methods if needed
      ],
    );
  }
}

class PaymentOption extends StatelessWidget {
  final String label;
  final String icon;
  final String value;
  final String groupValue;
  final ValueChanged<String?> onChanged;

  PaymentOption(
      {required this.label,
      required this.value,
      required this.groupValue,
      required this.onChanged,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    bool isSelected = value == groupValue;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0.w),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            width: 1.w,
            color: isSelected ? ColorsManager.primary : ColorsManager.med_grey,
          ),
          color:
              isSelected ? ColorsManager.backGroundColor : Colors.transparent,
        ),
        child: RadioListTile<String>(
          activeColor: ColorsManager.primary,
          title: Row(
            children: [
              //SvgPicture.asset(icon),
              Image.asset(icon),
              SizedBox(
                width: 5.h,
              ),
              TextWidget(
                text: label,
                color: ColorsManager.black,
                fontsize: 12.sp,
              ),
            ],
          ),
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
          controlAffinity: ListTileControlAffinity
              .trailing, // to make the radio button on the left
          contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
        ),
      ),
    );
  }
}
