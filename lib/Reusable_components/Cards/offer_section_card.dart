import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Bottom_Sheets/text_field_button_sheet.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View/Payment/payment_bottom_sheet.dart';
import 'package:amina/View/home/bottom_navbar_view.dart';
import 'package:amina/View/home/info_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Models/offer_section_card_model.dart';
import '../../View/home/Baby_Sitter_Info/baby_sitter_profile_view.dart';
import '../Bottom_Sheets/confirm_bottom_sheet.dart';

class OfferCardSection extends StatelessWidget {
  final OfferSectionCardModel offer;

  const OfferCardSection({Key? key, required this.offer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: ColorsManager.med_grey),
        borderRadius: BorderRadius.circular(8.r),
      ),
      color: ColorsManager.white,
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => BabySitterProfileView(
                        buttonMessage: 'قبول',
                      ),
                    );
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage(offer.imagePath),
                    radius: 30.r,
                  ),
                ),
                SizedBox(width: 16.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: offer.name,
                      color: ColorsManager.black,
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange, size: 16.r),
                        TextWidget(
                            text: offer.rating.toString(),
                            color: ColorsManager.black)
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    TextWidget(
                      text: offer.amount,
                      color: ColorsManager.black,
                      fontWeight: FontWeight.bold,
                      fontsize: 14.sp,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    TextWidget(
                      text: offer.distance,
                      color: ColorsManager.black,
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 8.h),
            TextWidget(
              text: 'ملاحظات: ${offer.notes}',
              color: ColorsManager.black,
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorsManager.primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r))),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => PaymentBottomSheet(
                          buttonMessage: 'قبول ودفع',
                          description:
                              "يمكنك الدفع كاش عند مقابلة الجليسة او الدفع مقدما من خلال وسيلة الدفع المناسبة لك",
                          message: "قبول ودفع عن طريق",
                          onTap: () {
                            Navigator.pop(context);
                            showModalBottomSheet(
                              context: context,
                              builder: (context) => ConfirmButtonSheet(
                                buttonMessage_1: 'طلباتي',
                                buttonMessage_2: "الصفحة الرئيسية",
                                message: 'تم الدفع بنجاح',
                                Description:
                                    'يمكنك متابعة طلبك من صفحة طلباتي وسيتم ظهور مكان الجليسة على الخريطة ووسيلة الإتصال بها قبل موعد الجلسة بساعة',
                                targetScreen_1: InfoView(),
                                targetScreen_2: BottomNavBarView(),
                              ),
                            );
                          },
                        ),
                      );
                    },
                    child: TextWidget(
                      text: 'قبول',
                      color: ColorsManager.white,
                      fontsize: 12.sp,
                    ),
                  ),
                ),
                SizedBox(width: 16.w),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorsManager.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r))),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => TextFieldBottomSheet(
                          buttonMessage: 'رفض',
                          message: "ما هو سبب الرفض ؟ (إختيار)",
                          onTap: () {
                            Navigator.pop(context);
                          },
                          hintText: 'إكتب هنا',
                        ),
                      );
                    },
                    child: TextWidget(
                      text: 'رفض',
                      color: ColorsManager.black,
                      fontsize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
