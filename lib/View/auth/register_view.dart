import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Resources/string_resources.dart';
import 'package:amina/Reusable_components/auth_data_field.dart';
import 'package:amina/Reusable_components/large_button.dart';
import 'package:amina/Reusable_components/text_widget.dart';
import 'package:amina/View/auth/otp_view.dart';
import 'package:amina/View/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    var ScreenHeigth = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorsManager.backGroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorsManager.backGroundColor,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_forward_ios_sharp),
          ),
        ],
      ),
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Container(
            width: double.infinity,
            height: 20.h,
            margin: EdgeInsets.only(top: 24.h, left: 24.w, right: 24.w),
            decoration: BoxDecoration(
              color: ColorsManager.SignInContainerColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.r),
                topRight: Radius.circular(12.r),
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                height: ScreenHeigth,
                width: ScreenWidth,
                decoration: BoxDecoration(
                  color: ColorsManager.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12.r),
                    topLeft: Radius.circular(12.r),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.h),
                child: Column(
                  children: [
                    TextWidget(
                      text: StringsManager.CreateAcc,
                      color: ColorsManager.black,
                      fontWeight: FontWeight.bold,
                      fontsize: 20.sp,
                    ),
                    TextWidget(
                      text: StringsManager.FillDataPlease,
                      color: ColorsManager.black,
                      fontsize: 14.sp,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
                      child: AuthDataField(
                        fieldSentence: StringsManager.PhoneNumberHint,
                        autoFocus: true,
                        keyBoardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(
                      width: ScreenWidth,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.w, right: 16.w, top: 16.h, bottom: 12.h),
                        child: LargeButton(
                            text: StringsManager.OtpSendingBtn,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OtpView(),
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
