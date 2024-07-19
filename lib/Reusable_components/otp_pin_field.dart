// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:lottie/lottie.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
// import 'dart:ui' as ui;
//
// import '../Resources/assets_resources.dart';
// import '../Resources/color_resources.dart';
// import '../Resources/font_resources.dart';
// import '../Resources/string_resources.dart';
// import '../View/home/home_view.dart';
// import 'large_button.dart';
//
// class OtpPinField extends StatelessWidget {
//   const OtpPinField({super.key});
//   @override
//   Widget build(BuildContext context) {
//     TextEditingController otpController = TextEditingController();
//     void showBottomSheet() {
//       String bottonSheetString = "";
//       String bottonSheetLottie = "";
//       bool Enterd = false;
//       String enteredOTP = otpController.text;
//       if (enteredOTP == '1234') {
//         bottonSheetString = StringsManager.OTPVerifiedSuccessfully;
//         bottonSheetLottie = AssetsResource.SuccessfulLottie;
//         Enterd = true;
//       } else {
//         bottonSheetString = StringsManager.InvalidOTP;
//         bottonSheetLottie = AssetsResource.InvalidLottie;
//         Enterd = false;
//       }
//       showModalBottomSheet(
//         context: context,
//         builder: (BuildContext context) {
//           return Container(
//             width: double.infinity,
//             padding: EdgeInsets.all(16.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   bottonSheetString,
//                   style: TextStyle(
//                     fontSize: 18.0,
//                     fontWeight: FontWeight.bold,
//                     fontFamily: FontResources.fontFamily,
//                   ),
//                 ),
//                 SizedBox(height: 8.0),
//                 Lottie.asset(
//                   repeat: false,
//                   bottonSheetLottie,
//                   width: 100.w,
//                   height: 100.h,
//                 ),
//                 SizedBox(height: 16.0),
//                 Enterd
//                     ? LargeButton(
//                         onPressed: Enterd
//                             ? () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => HomeView(),
//                                   ),
//                                 );
//                               }
//                             : () {
//                                 Navigator.of(context).pop();
//                               },
//                         text: Enterd
//                             ? StringsManager.GoToHomePage
//                             : StringsManager.PleaseTryAgain,
//                       )
//                     : SizedBox(),
//               ],
//             ),
//           );
//         },
//       );
//     }
//
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 35.w),
//       child: Form(
//         child: Directionality(
//           textDirection: ui.TextDirection.rtl,
//           child: PinCodeTextField(
//             appContext: context,
//             length: 4,
//             obscureText: false,
//             obscuringCharacter: '*',
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             blinkWhenObscuring: true,
//             animationType: AnimationType.fade,
//             enableActiveFill: true,
//             pinTheme: PinTheme(
//                 shape: PinCodeFieldShape.box,
//                 borderRadius: BorderRadius.circular(8.r),
//                 fieldHeight: 55.h,
//                 fieldWidth: 65.w,
//                 borderWidth: 1.5.w,
//                 activeFillColor: ColorsManager.white,
//                 disabledColor: ColorsManager.black,
//                 activeColor: ColorsManager.black,
//                 inactiveColor: ColorsManager.black.withOpacity(0.4),
//                 inactiveFillColor: ColorsManager.white,
//                 selectedFillColor: ColorsManager.white,
//                 selectedColor: ColorsManager.black),
//             cursorColor: ColorsManager.black,
//             animationDuration: const Duration(milliseconds: 300),
//             controller: otpController,
//             keyboardType: TextInputType.number,
//             autoFocus: true,
//             onCompleted: (x) {
//               otpController.text = x;
//             },
//             onChanged: (value) {
//               debugPrint(value);
//             },
//             beforeTextPaste: (text) {
//               debugPrint("Allowing to paste $text");
//               return true;
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
