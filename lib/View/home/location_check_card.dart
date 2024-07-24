import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import '../../Resources/assets_resources.dart';
import '../../Resources/font_resources.dart';
import '../../Resources/string_resources.dart';
import '../../Reusable_components/large_button.dart';
import 'info_view.dart';

class LocationCheckCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.0.r),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset(
            AssetsResource.LocationLottie,
            repeat: false,
            width: 100.w,
            height: 100.h,
          ),
          SizedBox(
            height: 32.0.h,
          ),
          Text(
            textAlign: TextAlign.center,
            StringsManager.LocationVarify1,
            style: TextStyle(
              fontSize: 16.0.sp,
              fontWeight: FontWeight.bold,
              fontFamily: FontResources.fontFamily,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            textAlign: TextAlign.center,
            StringsManager.LocationVarify2,
            style: TextStyle(
              fontSize: 14.0.sp,
              fontFamily: FontResources.fontFamily,
            ),
          ),
          SizedBox(height: 32.0.h),
          LargeButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InfoView(),
                ),
              );
            },
            text: StringsManager.Continue_To_Map,
          ),
        ],
      ),
    );
  }
}
