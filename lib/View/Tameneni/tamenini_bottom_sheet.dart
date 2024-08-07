import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class TameniniBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0.r)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset(
            AssetsResource.TameniniLottie,
            width: 100.w,
            height: 100.h,
            fit: BoxFit.cover,
          ),
          TextWidget(
            text: 'طمّنيني',
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.all(10.0.r),
            child: TextWidget(
              text:
                  'طمئنيني هي الطلبات التي بدأت بالفعل وتم وصول الجليسة للمكان\n'
                  'فمن خلال طمئنيني يمكنك إرسال إشعار للجليسة للإطمئنان على طفلك وسيتم إرسال صورة أو فيديو لطفلك من خلال الجليسة.',
              textAlign: TextAlign.center,
              color: Colors.black,
              fontsize: 12.sp,
              maxLines: 10,
            ),
          ),
        ],
      ),
    );
  }
}
