import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View_model/order_steps_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import '../../../Resources/color_resources.dart';

class OrderTrackingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<OrderStepsViewModel>(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            text: 'متابعة الطلب',
            color: ColorsManager.black,
          ),
          SizedBox(height: 10.h),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: viewModel.orderSteps.length,
            itemBuilder: (context, index) {
              final step = viewModel.orderSteps[index];
              return TimelineTile(
                isLast: index == viewModel.orderSteps.length - 1,
                isFirst: index == 0,
                isCompleted: step.isCompleted,
                description: step.description,
                dateTime: step.dateTime,
              );
            },
          ),
        ],
      ),
    );
  }
}

class TimelineTile extends StatelessWidget {
  final bool isLast;
  final bool isFirst;
  final bool isCompleted;
  final String description;
  final DateTime? dateTime;

  const TimelineTile({
    required this.isLast,
    required this.isFirst,
    required this.isCompleted,
    required this.description,
    this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    final arabicDate = dateTime != null
        ? DateFormat('EEEE, MMM d, yyyy - h:mm a', 'ar').format(dateTime!)
        : null;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 10.w,
              height: 10.h,
              decoration: BoxDecoration(
                color: isCompleted ? ColorsManager.primary : ColorsManager.grey,
                shape: BoxShape.circle,
              ),
            ),
            if (!isLast)
              Container(
                width: 2.w,
                height: 50.h,
                color: isCompleted ? ColorsManager.primary : Colors.grey,
              ),
          ],
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: description,
                color: isCompleted ? Colors.black : Colors.grey,
              ),
              if (!isLast)
                SizedBox(height: 50.h), // Match the height of the line
            ],
          ),
        ),
        if (arabicDate != null)
          TextWidget(
            text: arabicDate,
            color: ColorsManager.black,
            fontsize: 10.sp,
          ),
      ],
    );
  }
}
