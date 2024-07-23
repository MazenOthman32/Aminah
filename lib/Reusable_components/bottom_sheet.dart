import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import '../Resources/font_resources.dart';
import '../Reusable_components/large_button.dart';
import '../View/home/bottom_navbar_view.dart';

class BottomSheetContent extends StatelessWidget {
  final String message;
  final String lottie;
  final bool isSuccess;
  final String buttonMessage;
  final Widget targetScreen;

  const BottomSheetContent({
    super.key,
    required this.buttonMessage,
    required this.message,
    required this.lottie,
    required this.isSuccess, required this.targetScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            message,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: FontResources.fontFamily,
            ),
          ),
          SizedBox(height: 8.0),
          Lottie.asset(
            repeat: false,
            lottie,
            width: 100.w,
            height: 100.h,
          ),
          SizedBox(height: 16.0),
          isSuccess
              ? LargeButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => targetScreen,
                      ),
                    );
                  },
                  text: buttonMessage,
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
