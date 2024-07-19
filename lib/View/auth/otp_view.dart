import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/font_resources.dart';
import 'package:amina/Reusable_components/otp_pin_field.dart';
import 'package:amina/View/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'dart:ui' as ui;
import '../../Resources/color_resources.dart';
import '../../Resources/string_resources.dart';
import '../../Reusable_components/large_button.dart';
import '../../Reusable_components/text_widget.dart';

class OtpView extends StatefulWidget {
  OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  TextEditingController otpController = TextEditingController();
  void showBottomSheet() {
    String bottonSheetString = "";
    String bottonSheetLottie = "";
    bool Enterd = false;
    String enteredOTP = otpController.text;
    if (enteredOTP == '1234') {
      bottonSheetString = StringsManager.OTPVerifiedSuccessfully;
      bottonSheetLottie = AssetsResource.SuccessfulLottieInSecondaryColor;
      Enterd = true;
    } else {
      bottonSheetString = StringsManager.InvalidOTP;
      bottonSheetLottie = AssetsResource.InvalidLottie;
      Enterd = false;
    }
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                bottonSheetString,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: FontResources.fontFamily,
                ),
              ),
              SizedBox(height: 8.0),
              Lottie.asset(
                repeat: false,
                bottonSheetLottie,
                width: 100.w,
                height: 100.h,
              ),
              SizedBox(height: 16.0),
              Enterd
                  ? LargeButton(
                      onPressed: Enterd
                          ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeView(),
                                ),
                              );
                            }
                          : () {
                              Navigator.of(context).pop();
                            },
                      text: Enterd
                          ? StringsManager.GoToHomePage
                          : StringsManager.PleaseTryAgain,
                    )
                  : SizedBox(),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_forward_ios_sharp),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.h),
            child: Column(
              children: [
                CircleAvatar(
                  child: CircleAvatar(
                    radius: 10.r,
                    backgroundImage: AssetImage(AssetsResource.EmailPng),
                  ),
                  radius: 22.r,
                  backgroundColor: ColorsManager.OfWhite,
                ),
                SizedBox(height: 24.h),
                TextWidget(
                  text: StringsManager.FillTheOTP,
                  color: ColorsManager.black,
                  fontWeight: FontWeight.bold,
                  fontsize: 20.sp,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 8.h),
                  child: TextWidget(
                    text: StringsManager.CheckAndFillTheOTP + "01062585076",
                    color: ColorsManager.black,
                    fontsize: 14.sp,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: TextWidget(
                    text: StringsManager.ReSend,
                    color: ColorsManager.black,
                    fontsize: 12.sp,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35.w),
                  child: Form(
                    child: Directionality(
                      textDirection: ui.TextDirection.rtl,
                      child: PinCodeTextField(
                        appContext: context,
                        length: 4,
                        obscureText: false,
                        obscuringCharacter: '*',
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        blinkWhenObscuring: true,
                        animationType: AnimationType.fade,
                        enableActiveFill: true,
                        pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(8.r),
                            fieldHeight: 55.h,
                            fieldWidth: 65.w,
                            borderWidth: 1.5.w,
                            activeFillColor: ColorsManager.white,
                            disabledColor: ColorsManager.black,
                            activeColor: ColorsManager.black,
                            inactiveColor: ColorsManager.black.withOpacity(0.4),
                            inactiveFillColor: ColorsManager.white,
                            selectedFillColor: ColorsManager.white,
                            selectedColor: ColorsManager.black),
                        cursorColor: ColorsManager.black,
                        animationDuration: const Duration(milliseconds: 300),
                        controller: otpController,
                        keyboardType: TextInputType.number,
                        autoFocus: true,
                        onCompleted: (x) {
                          otpController.text = x;
                        },
                        onChanged: (value) {
                          debugPrint(value);
                        },
                        beforeTextPaste: (text) {
                          debugPrint("Allowing to paste $text");
                          return true;
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: LargeButton(
                    rightPadding: 24.w,
                    leftPadding: 24.w,
                    text: 'تأكيد رمز الأمان',
                    onPressed: showBottomSheet,
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
