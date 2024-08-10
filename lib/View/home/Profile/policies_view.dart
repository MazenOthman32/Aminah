import 'package:amina/Reusable_components/Buttons/Back_Button.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PolicesView extends StatelessWidget {
  const PolicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: CustomBackButton(),
        centerTitle: true,
        title: TextWidget(
          text: 'الشروط والأحكام',
          color: Colors.black,
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: 'ما هو الشروط الخاصة بالتطبيق ؟',
                  color: Colors.black,
                  fontsize: 16.sp,
                ),
                TextWidget(
                  text: 'آخر تحديث 20/4/2024',
                  color: Colors.black,
                  fontsize: 12.sp,
                ),
                SizedBox(height: 40.h),
                TextWidget(
                  maxLines: 6,
                  text:
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
                  color: Colors.black,
                  fontsize: 12.sp,
                ),
                SizedBox(height: 20.h),
                TextWidget(
                  maxLines: 6,
                  text:
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
                  color: Colors.black,
                  fontsize: 12.sp,
                ),
                SizedBox(height: 20.h),
                TextWidget(
                  maxLines: 6,
                  text:
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
                  color: Colors.black,
                  fontsize: 12.sp,
                ),
                SizedBox(height: 20.h),
                TextWidget(
                  maxLines: 6,
                  text:
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
                  color: Colors.black,
                  fontsize: 12.sp,
                ),
                SizedBox(height: 20.h),
                TextWidget(
                  maxLines: 6,
                  text:
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
                  color: Colors.black,
                  fontsize: 12.sp,
                ),
                SizedBox(height: 20.h),
                TextWidget(
                  maxLines: 6,
                  text:
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
                  color: Colors.black,
                  fontsize: 12.sp,
                ),
                SizedBox(height: 20.h),
                TextWidget(
                  maxLines: 6,
                  text:
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
                  color: Colors.black,
                  fontsize: 12.sp,
                ),
                SizedBox(height: 20.h),
                TextWidget(
                  maxLines: 6,
                  text:
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
                  color: Colors.black,
                  fontsize: 12.sp,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
