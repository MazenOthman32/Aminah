import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/View/Wallet/delete_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/assets_resources.dart';

class CreditCardsView extends StatelessWidget {
  const CreditCardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        centerTitle: true,
        title: TextWidget(
          text: 'كروت الدفع',
          color: Colors.black,
        ),
      )),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 5.h),
            child: ListTile(
              trailing: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => DeleteBottomSheet(
                          message: "هل أنت متأكد من حذف وسيلة الدفع ؟",
                          redButtonText: "نعم, إحذف",
                          whiteButtonText: "لا, رجوع"),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16.0)),
                      ),
                      isScrollControlled: true,
                    );
                  },
                  icon: Icon(
                    Icons.delete_outline,
                    color: ColorsManager.grey,
                  )),
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: ColorsManager.med_grey,
                    width: 2.w,
                  ),
                  borderRadius: BorderRadius.circular(16.r)),
              title: Row(
                children: [
                  SvgPicture.asset(
                    AssetsResource.MasterCardSVG,
                    width: 35.w,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  TextWidget(
                    text: 'xxx 565 5656',
                    color: Colors.black,
                    fontsize: 16.sp,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 5.h),
            child: ListTile(
              trailing: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => DeleteBottomSheet(
                          message: "هل أنت متأكد من حذف وسيلة الدفع ؟",
                          redButtonText: "نعم, إحذف",
                          whiteButtonText: "لا, رجوع"),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16.0)),
                      ),
                      isScrollControlled: true,
                    );
                  },
                  icon: Icon(
                    Icons.delete_outline,
                    color: ColorsManager.grey,
                  )),
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: ColorsManager.med_grey, width: 2.w),
                  borderRadius: BorderRadius.circular(16.r)),
              title: Row(
                children: [
                  SvgPicture.asset(
                    AssetsResource.VisaSVG,
                    width: 35.w,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  TextWidget(
                    text: 'xxx 565 5656',
                    color: Colors.black,
                    fontsize: 16.sp,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 5.h),
            child: ListTile(
              trailing: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => DeleteBottomSheet(
                          message: "هل أنت متأكد من حذف وسيلة الدفع ؟",
                          redButtonText: "نعم, إحذف",
                          whiteButtonText: "لا, رجوع"),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16.0)),
                      ),
                      isScrollControlled: true,
                    );
                  },
                  icon: Icon(
                    Icons.delete_outline,
                    color: ColorsManager.grey,
                  )),
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: ColorsManager.med_grey, width: 2.w),
                  borderRadius: BorderRadius.circular(16.r)),
              title: Row(
                children: [
                  SvgPicture.asset(
                    AssetsResource.VisaSVG,
                    width: 35.w,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  TextWidget(
                    text: 'xxx 565 5656',
                    color: Colors.black,
                    fontsize: 16.sp,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 5.h),
            child: ListTile(
              trailing: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => DeleteBottomSheet(
                          message: "هل أنت متأكد من حذف وسيلة الدفع ؟",
                          redButtonText: "نعم, إحذف",
                          whiteButtonText: "لا, رجوع"),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16.0)),
                      ),
                      isScrollControlled: true,
                    );
                  },
                  icon: Icon(
                    Icons.delete_outline,
                    color: ColorsManager.grey,
                  )),
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: ColorsManager.med_grey, width: 2.w),
                  borderRadius: BorderRadius.circular(16.r)),
              title: Row(
                children: [
                  SvgPicture.asset(
                    AssetsResource.VisaSVG,
                    width: 35.w,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  TextWidget(
                    text: 'xxx 565 5656',
                    color: Colors.black,
                    fontsize: 16.sp,
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
