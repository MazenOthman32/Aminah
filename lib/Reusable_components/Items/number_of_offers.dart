import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferButton extends StatelessWidget {
  final int numberOfOffers;
  final Function() onTap;
  OfferButton({required this.numberOfOffers, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            backgroundColor: ColorsManager.backGroundColor),
        onPressed: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              text: 'العروض المقدمة على الطلب الأخير',
              color: ColorsManager.black,
              fontsize: 14.sp,
              textAlign: TextAlign.start,
            ),
            Spacer(
              flex: 1,
            ),
            Row(
              children: [
                TextWidget(
                  text: '$numberOfOffers  عروض',
                  color: ColorsManager.primary,
                  textAlign: TextAlign.end,
                  fontsize: 14.sp,
                ),
                Icon(
                  Icons.keyboard_double_arrow_left_outlined,
                  color: ColorsManager.primary,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
