import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'dart:ui' as ui;
import '../../Resources/color_resources.dart';
import '../../View_model/otp_view_model.dart';

class OtpPinField extends StatelessWidget {
  const OtpPinField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.w),
      child: Form(
        child: Directionality(
          textDirection: ui.TextDirection.rtl,
          child: Consumer<OtpViewModel>(
            builder: (context, viewModel, child) {
              return PinCodeTextField(
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
                  selectedColor: ColorsManager.black,
                ),
                cursorColor: ColorsManager.black,
                animationDuration: const Duration(milliseconds: 300),
                controller: TextEditingController(),
                keyboardType: TextInputType.number,
                autoFocus: true,
                onCompleted: (x) {
                  viewModel.setOtpCode(x);
                },
                onChanged: (value) {
                  debugPrint(value);
                },
                beforeTextPaste: (text) {
                  debugPrint("Allowing to paste $text");
                  return true;
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
