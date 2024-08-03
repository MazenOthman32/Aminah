import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Buttons/large_button.dart';
import 'package:amina/Reusable_components/Cards/images_card.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Reusable_components/Sections/baby_sitter_profile_section.dart';
import '../../../Reusable_components/Sections/description_section.dart';
import '../../Payment/payment_bottom_sheet.dart';

class BabySitterProfileView extends StatelessWidget {
  final String buttonMessage;

  const BabySitterProfileView({
    super.key,
    required this.buttonMessage,
  });

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ProfileSection(
                name: 'فرح يوسف',
                age: 35,
                image: AssetsResource.MaleSVG,
                rate: 4.6,
                role: "جليسة أطفال"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 16.h),
              child: DescriptionSection(
                  description:
                      'إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 16.h),
              child: Row(
                children: [
                  //SvgPicture.asset(),
                  SizedBox(
                    width: 5.w,
                  ),
                  TextWidget(
                    text: "شهاداتي : ",
                    color: ColorsManager.black,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ImagesCard(
                      image: AssetsResource.CertificatePNG,
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height / 6),
                  ImagesCard(
                      image: AssetsResource.CertificatePNG,
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height / 6),
                  ImagesCard(
                      image: AssetsResource.CertificatePNG,
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height / 6),
                  ImagesCard(
                      image: AssetsResource.CertificatePNG,
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height / 6),
                ],
              ),
            ),
            LargeButton(
              onPressed: () {
                Navigator.pop(context);
                showModalBottomSheet(
                    context: context,
                    builder: (context) => PaymentBottomSheet(
                        buttonMessage: 'قبول ودفع',
                        message: "قبول ودفع عن طريق",
                        description:
                            "يمكنك الدفع كاش عند مقابلة الجليسة او الدفع مقدما من خلال وسيلة الدفع المناسبة لك"));
              },
              text: buttonMessage,
            )
          ],
        ),
      ),
    );
  }
}
