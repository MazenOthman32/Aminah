import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Resources/font_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../View_model/timer_view_model.dart';

class TimerWidget extends StatelessWidget {
  @override
  final String text;
  final Function() onTap;
  TimerWidget({required this.text, required this.onTap});
  Widget build(BuildContext context) {
    return Consumer<TimerViewModel>(
      builder: (context, viewModel, child) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  TextWidget(
                    text: viewModel.formattedTime,
                    color: Colors.black,
                    fontsize: 12.sp,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: LinearProgressIndicator(
                      value: viewModel.remainingTime.inMinutes / (4.5 * 60),
                      backgroundColor: ColorsManager.backGroundColor,
                      color: ColorsManager.primary,
                    ),
                  ),
                  SizedBox(width: 20.w),
                  InkWell(
                    onTap: onTap,
                    child: Text(
                      '+ ${text}',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        fontFamily: FontResources.fontFamily,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
