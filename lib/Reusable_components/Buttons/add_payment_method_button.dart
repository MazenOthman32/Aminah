import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';

class AddPaymentMethodButton extends StatelessWidget {
  final VoidCallback onPressed;

  AddPaymentMethodButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.add,
            color: Colors.black,
            size: 20.sp,
          ),
          SizedBox(width: 4.w),
          TextWidget(
            text: 'إضافة وسيلة أخرى',
            color: Colors.black,
            fontsize: 14.sp,
          ),
        ],
      ),
    );
  }
}
