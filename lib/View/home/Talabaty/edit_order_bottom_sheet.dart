import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';

import 'package:amina/View/home/Order/BabySitter_Order/babysitter_request_form_view.dart';
import 'package:amina/View/home/Talabaty/report_bottom_sheet_agree.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditOrderBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 5.0.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 80.w,
            height: 4.h,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(2.0.r),
            ),
          ),
          SizedBox(height: 16.0.h),
          Row(
            children: [
              Icon(Icons.edit_outlined, color: Colors.black),
              SizedBox(width: 8.0),
              TextWidget(
                text: 'تعديل الطلب',
                color: Colors.black,
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios_outlined),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BabysitterRequestForm(),
                    )),
              ),
            ],
          ),
          Divider(thickness: 1.0),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton.icon(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => ReportBottomSheetAgree(
                    message: ' هل أنت متأكد من إلغاء الطلب ؟',
                    description:
                        'يمكنك إلغاء الطلب في أي وقت قبل قبول العروض ولن يتم تغريمك بدفع أي مبلغ ',
                    redButtonText: 'نعم إلغي',
                    whiteButtonText: 'لا، رجوع',
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16.0)),
                  ),
                  isScrollControlled: true,
                );
              },
              icon: Icon(Icons.cancel, color: Colors.red),
              label: TextWidget(
                text: 'إلغاء الطلب',
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
