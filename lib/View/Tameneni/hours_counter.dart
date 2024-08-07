import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HoursCounter extends StatelessWidget {
  final Function() increment, decrement;
  final Widget val;
  HoursCounter(
      {required this.increment, required this.decrement, required this.val});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
        border: Border.all(color: ColorsManager.med_grey, width: 1.w),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextWidget(
            text: 'عدد الساعات',
            color: ColorsManager.black,
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor: ColorsManager.med_grey.withOpacity(.6),
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: increment,
                ),
              ),
              Container(
                child: val,
              ),
              CircleAvatar(
                backgroundColor: ColorsManager.med_grey.withOpacity(.6),
                child: IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: decrement,
                ),
              ),
            ],
          ),
          SizedBox(width: 10.w),
        ],
      ),
    );
  }
}
