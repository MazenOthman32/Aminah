import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Buttons/large_button.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View/Payment/payment_bottom_sheet.dart';
import 'package:amina/View/Tameneni/hours_counter.dart';
import 'package:amina/View_model/time_extend_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ExtendTimeBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TimeExtendViewModel(),
      child: Consumer<TimeExtendViewModel>(
        builder: (context, viewModel, child) {
          return Container(
            padding: EdgeInsets.all(10.0.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 10.h),
                Container(
                  width: 40.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    color: ColorsManager.med_grey,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                SizedBox(height: 20.h),
                TextWidget(
                  text: 'تمديد الوقت',
                  color: ColorsManager.black,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 20.h),
                HoursCounter(
                  increment: () {
                    context.read<TimeExtendViewModel>().incrementHours();
                  },
                  decrement: () {
                    context.read<TimeExtendViewModel>().decrementHours();
                  },
                  val: Consumer<TimeExtendViewModel>(
                    builder: (context, viewModel, child) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0.w),
                        child: TextWidget(
                          text: '${viewModel.hours}',
                          color: ColorsManager.black,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20.h),
                TextWidget(
                  text: 'المبلغ الإضافي',
                  color: ColorsManager.black,
                ),
                SizedBox(height: 10.h),
                Consumer<TimeExtendViewModel>(
                  builder: (context, viewModel, child) {
                    return TextWidget(
                      fontWeight: FontWeight.bold,
                      text: '${viewModel.totalPrice} رس',
                      color: ColorsManager.black,
                    );
                  },
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 5.h),
                  child: SizedBox(
                    width: double.infinity,
                    child: LargeButton(
                      text: "تأكيد",
                      onPressed: () {
                        Navigator.pop(context);
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => PaymentBottomSheet(
                              buttonMessage: "تأكيد ودفع",
                              message: "تأكيد ودفع عن طريق",
                              description:
                                  "يمكنك الدفع كاش عند مقابلة الجليسة او الدفع مقدما من خلال وسيلة الدفع المناسبة لك"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(16.0)),
                          ),
                          isScrollControlled: true,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
