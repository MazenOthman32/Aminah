import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Resources/font_resources.dart';
import '../Buttons/large_button.dart';

class ConfirmButtonSheet extends StatelessWidget {
  final String message;
  final String Description;
  final String buttonMessage_1;
  final String? buttonMessage_2;
  final Widget targetScreen_1;
  final Widget? targetScreen_2;

  const ConfirmButtonSheet({
    super.key,
    required this.buttonMessage_1,
    this.buttonMessage_2 = '',
    required this.message,
    required this.Description,
    required this.targetScreen_1,
    this.targetScreen_2,
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
          Text(
            message,
            style: TextStyle(
              fontSize: 18.0.sp,
              fontWeight: FontWeight.bold,
              fontFamily: FontResources.fontFamily,
            ),
          ),
          SizedBox(height: 8.0.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: SizedBox(
              width: double.infinity,
              child: TextWidget(
                maxLines: 3,
                textAlign: TextAlign.center,
                text: Description,
                color: ColorsManager.black,
                fontsize: 12.sp,
              ),
            ),
          ),
          SizedBox(height: 16.0.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: SizedBox(
              width: double.infinity,
              child: LargeButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => targetScreen_1,
                    ),
                  );
                },
                text: buttonMessage_1,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          buttonMessage_2 != ''
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: SizedBox(
                    width: double.infinity,
                    child: LargeButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => targetScreen_2!),
                        );
                      },
                      text: buttonMessage_2!,
                      buttonColor: ColorsManager.Secondery,
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
