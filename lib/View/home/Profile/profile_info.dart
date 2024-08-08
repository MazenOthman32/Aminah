import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Reusable_components/Buttons/large_button.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View/Wallet/delete_bottom_sheet.dart';
import 'package:amina/View/home/Profile/edit_profile_info_view.dart';
import 'package:amina/resources/color_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileInfoView extends StatelessWidget {
  const ProfileInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextWidget(
          text: "معلومات الحساب",
          color: Colors.black,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditProfileInfoView(),
                  ));
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: TextWidget(
                text: 'تعديل',
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.r,
            backgroundImage: AssetImage(AssetsResource.FarahPng),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
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
            padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
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
            padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
            child: SizedBox(
              width: double.infinity,
              child: LargeButton(
                text: 'حذف الحساب',
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => DeleteBottomSheet(
                        message: "حذف الحساب ؟",
                        redButtonText: "نعم, إحذف",
                        whiteButtonText: "لا, رجوع"),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(16.0)),
                    ),
                    isScrollControlled: true,
                  );
                },
                buttonColor: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
