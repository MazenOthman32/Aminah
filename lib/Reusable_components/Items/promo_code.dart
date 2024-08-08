import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Bottom_Sheets/text_field_button_sheet.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../View_model/payment_view_model.dart';

class PromoCodeComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: ColorsManager.primary,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
          value: context.watch<PaymentViewModel>().hasPromoCode,
          onChanged: (value) {
            showModalBottomSheet(
              context: context,
              builder: (context) => TextFieldBottomSheet(
                  buttonMessage: 'تفعيل',
                  message: "برجاء إدخال كود الخصم",
                  hintText: "إكتب هنا"),
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(16.0.r)),
              ),
              isScrollControlled: true,
            );
            context.read<PaymentViewModel>().togglePromoCode();
          },
        ),
        TextWidget(
          text: 'لديك كود خصم ؟',
          color: ColorsManager.black,
          fontsize: 12.sp,
        ),
      ],
    );
  }
}
