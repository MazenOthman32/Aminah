import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Resources/string_resources.dart';
import 'package:amina/Reusable_components/Buttons/large_button.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../Reusable_components/Fields/otp_pin_field.dart';
import '../../View_model/otp_view_model.dart';

class RegisterOtpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => OtpViewModel(),
      child: Scaffold(
        backgroundColor: ColorsManager.white,
        appBar: AppBar(
          backgroundColor: ColorsManager.white,
          automaticallyImplyLeading: false,
          actions: [
            BackButton(),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                    text:
                        StringsManager.CheckAndFillTheOTPNumber + "01062585076",
                    color: ColorsManager.black,
                    fontsize: 14.sp,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
                TextWidget(
                  text: StringsManager.ReSend,
                  color: ColorsManager.black,
                  fontsize: 12.sp,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0.h),
                  child: SizedBox(
                    child: OtpPinField(),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Consumer<OtpViewModel>(
                    builder: (context, viewModel, child) {
                      return LargeButton(
                        rightPadding: 24.w,
                        leftPadding: 24.w,
                        text: StringsManager.OTP_Varification,
                        onPressed: () => viewModel.showBottomSheet(context),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
