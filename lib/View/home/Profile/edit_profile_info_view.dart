import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Reusable_components/Buttons/Back_Button.dart';
import 'package:amina/Reusable_components/Buttons/large_button.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/resources/color_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileInfoView extends StatelessWidget {
  const EditProfileInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: CustomBackButton(),
        centerTitle: true,
        title: TextWidget(
          text: "معلومات الحساب",
          color: Colors.black,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.r,
                backgroundImage: AssetImage(AssetsResource.User_Png),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      side: BorderSide(color: ColorsManager.grey)),
                  title: TextWidget(
                    text: 'الإسم',
                    color: ColorsManager.grey,
                    fontsize: 12.sp,
                  ),
                  subtitle: TextWidget(
                    text: 'أميرة محمود',
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      side: BorderSide(color: ColorsManager.grey)),
                  title: TextWidget(
                    text: 'البريد الإلكتروني',
                    color: ColorsManager.grey,
                    fontsize: 12.sp,
                  ),
                  subtitle: TextWidget(
                    text: 'amira@gmail.com',
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      side: BorderSide(color: ColorsManager.grey)),
                  title: TextWidget(
                    text: 'رقم الهاتف',
                    color: ColorsManager.grey,
                    fontsize: 12.sp,
                  ),
                  subtitle: TextWidget(
                    text: '0966 232 566 00',
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 20.h),
            child: SizedBox(
              width: double.infinity,
              child: LargeButton(
                text: 'حفظ',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
