import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import '../../Resources/font_resources.dart';
import '../Buttons/large_button.dart';

class BottomSheetContent extends StatelessWidget {
  final String message;
  final String? description;
  final String lottie;
  final bool isSuccess;
  final String buttonMessage;
  final Widget targetScreen;

  const BottomSheetContent({
    super.key,
    required this.buttonMessage,
    required this.message,
    required this.lottie,
    required this.isSuccess,
    required this.targetScreen,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.0.r),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextWidget(
            text: message,
            color: ColorsManager.black,
            fontsize: 18.0.sp,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 8.0.h),
          TextWidget(
            text: description ?? '',
            color: ColorsManager.black,
            fontsize: 14.0.sp,
            maxLines: 3,
          ),
          SizedBox(height: 8.0.h),
          Lottie.asset(
            repeat: false,
            lottie,
            width: 100.w,
            height: 100.h,
          ),
          SizedBox(height: 16.0.h),
          isSuccess
              ? LargeButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => targetScreen,
                      ),
                    );
                  },
                  text: buttonMessage,
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
