import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Buttons/large_button.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View_model/user_balance_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'select_method_bottom_sheet.dart';

class UserBalanceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<UserBalanceViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: TextWidget(text: 'سحب', color: Colors.black),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.r),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            TextWidget(text: 'مبلغ السحب', color: Colors.black),
            SizedBox(height: 10.h),
            TextWidget(
              text: '${viewModel.withdrawAmount} ر.س',
              fontsize: 30.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            SizedBox(height: 10.h),
            TextWidget(
                text:
                    'رصيدك المتاح ${viewModel.availableBalance.toStringAsFixed(2)} ر.س',
                fontsize: 14.sp,
                color: Colors.black),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(text: "سحب الرصيد إلى", color: Colors.black),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => SelectMethodBottomSheet(
                            buttonMessage: 'إختيار وسحب',
                            message: "إختر الوسيلة المناسبة لسحب رصيد محفظتك",
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(16.0.r)),
                          ),
                          isScrollControlled: true,
                        );
                      },
                      child: Row(
                        children: [
                          TextWidget(
                            text: 'تغيير',
                            color: Colors.black,
                            fontsize: 14.sp,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Icon(Icons.arrow_drop_down_outlined),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                    color: ColorsManager.backGroundColor,
                    borderRadius: BorderRadius.circular(12.r)),
                height: 45.h,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      AssetsResource.MasterCardSVG,
                      width: 35.w,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    TextWidget(
                      text: 'xxx 565 5656',
                      color: Colors.black,
                      fontsize: 16.sp,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: SizedBox(
                width: double.infinity,
                child: LargeButton(
                  fontSize: 14.sp,
                  text: 'تأكيد وسحب',
                  onPressed: () => viewModel.confirmWithdraw(),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: 12,
                itemBuilder: (context, index) {
                  if (index == 9) {
                    return IconButton(
                      icon: Icon(Icons.backspace_outlined),
                      onPressed: () {
                        viewModel.deleteLastDigit();
                      },
                    );
                  } else if (index == 11) {
                    return SizedBox.shrink();
                  } else {
                    String digit = (index == 10 ? 0 : index + 1).toString();
                    return ElevatedButton(
                      onPressed: () {
                        viewModel.updateWithdrawAmount(digit);
                      },
                      child: TextWidget(
                        text: digit,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.r)),
                        foregroundColor: Colors.black,
                        backgroundColor: ColorsManager.OfWhite.withOpacity(.8),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
