import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteBottomSheet extends StatelessWidget {
  final String message;
  final String redButtonText;
  final String whiteButtonText;
  DeleteBottomSheet({
    required this.message,
    required this.redButtonText,
    required this.whiteButtonText,
  });
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 5.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 50.w,
            height: 4.h,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(2.0.r),
            ),
          ),
          SizedBox(height: 16.0.h),
          TextWidget(
            text: message,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 16.0.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0.r),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 12.0),
                  child: TextWidget(
                    text: redButtonText,
                    color: Colors.white,
                  ),
                ),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black,
                  side: BorderSide(color: Colors.grey),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0.r),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 24.0.w, vertical: 12.0.h),
                  child: TextWidget(
                    text: 'لا، رجوع',
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0.h),
        ],
      ),
    );
  }
}
