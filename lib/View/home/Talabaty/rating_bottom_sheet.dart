import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Resources/font_resources.dart';
import 'package:amina/Reusable_components/Bottom_Sheets/confirm_bottom_sheet.dart';
import 'package:amina/Reusable_components/Buttons/large_button.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View/home/bottom_navbar_view.dart';
import 'package:amina/View_model/rating_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class RatingBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextWidget(
            text: 'تقييم الجلسة',
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          SizedBox(height: 10.h),
          TextWidget(
            maxLines: 4,
            text:
                'نتمنى أن تكون قد استمتعت بالجلسة وأن كانت تجربتك مرضية، ونحن نرحب بأي تعليقات ترغب في تقديمها.',
            textAlign: TextAlign.center,
            color: Colors.black,
            fontsize: 14.sp,
          ),
          SizedBox(height: 10.h),
          Consumer<RatingViewModel>(
            builder: (context, viewModel, child) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return IconButton(
                    icon: Icon(
                      index < viewModel.rating ? Icons.star : Icons.star_border,
                      color: ColorsManager.Secondery,
                    ),
                    onPressed: () {
                      viewModel.setRating(index + 1);
                    },
                  );
                }),
              );
            },
          ),
          SizedBox(height: 10.h),
          TextField(
            decoration: InputDecoration(
              hintText: 'شاركنا بتعليقك',
              hintStyle: TextStyle(fontFamily: FontResources.fontFamily),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16.r)),
            ),
            maxLines: 3,
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w),
            child: SizedBox(
              width: double.infinity,
              child: LargeButton(
                  text: "إرسال التعليق",
                  onPressed: () {
                    Navigator.pop(context);
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => ConfirmButtonSheet(
                          buttonMessage_1: "الصفحة الرئيسية",
                          message: "تم إرسال التقييم بنجاح!",
                          Description:
                              " نشكرك مره آخرى على اختيارك لخدمتنا،ونأمل أن نتمكن من خدمتك مرةأخرى في المستقبل.",
                          targetScreen_1: BottomNavBarView()),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16.0)),
                      ),
                      isScrollControlled: true,
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
