import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'report_bottom_sheet_agree.dart';

void ReportBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 15.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.flag_outlined),
                    SizedBox(
                      width: 5.w,
                    ),
                    TextWidget(text: 'الإبلاغ عن تأخير', color: Colors.black),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => ReportBottomSheetAgree(
                        message: ' إبلاغ عن تأخير ؟',
                        description:
                            'يمكن إرسال إبلاغ عن تأخير وسيتم إتخاذ كافة الإجراءات والتواصل مع الجلسة في أقرب وقت. برجاء قم بالتبليغ عند التأخر مدة تزيد عن 15 دقيقة.',
                        redButtonText: 'نعم إبلاغ',
                        whiteButtonText: 'لا، رجوع',
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16.0)),
                      ),
                      isScrollControlled: true,
                    );
                  },
                ),
              ],
            ),
            Divider(),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.cancel,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  TextWidget(
                    text: 'إلغاء الحجز',
                    color: Colors.red,
                  ),
                ],
              ),
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => ReportBottomSheetAgree(
                    message: ' إبلاغ عن تأخير ؟',
                    description:
                        ' ${"\n"}  يمكنك إلغاء الحجز بعد قبول العروض بعد ساعتين من قبول العروض ولكن سيتم تغريمك 50% من قيمة الحجز ${"\n"} يمكنك إلغاء الطلب بعد قبول العروض في خلال ساعتين بدون تغريمك أي مصاريف ${"\n"} في حالة إلغاء الحجز في الساعة الآخيرة قبل موعد الجلسة سيتم تغريمك قيمة المبلغ بالكامل.${"\n"} ',
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
            ),
          ],
        ),
      );
    },
  );
}
