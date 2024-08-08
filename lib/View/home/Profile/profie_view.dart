import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Reusable_components/Helper_Widgets/text_widget.dart';
import 'package:amina/Reusable_components/Items/user_avatar.dart';
import 'package:amina/View/Wallet/delete_bottom_sheet.dart';
import 'package:amina/View/home/Add_New_child/add_new_child.dart';
import 'package:amina/View/home/Profile/adresses_view.dart';
import 'package:amina/View/home/Profile/connect_with_us_bottom_sheet.dart';
import 'package:amina/View/home/Profile/faq_view.dart';
import 'package:amina/View/home/Profile/fawater_view.dart';
import 'package:amina/View/home/Profile/policies_view.dart';
import 'package:amina/View/home/Profile/profile_info.dart';
import 'package:amina/View_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'dart:ui' as ui;

import '../../../resources/color_resources.dart';
import 'back_ground.dart';
import 'who_we_are_bottom_sheet.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                CustomPaint(
                  size: Size(width.w, 200.h),
                  painter: RPSCustomPainter(),
                ),
                Column(
                  children: [
                    SizedBox(height: 55.h),
                    CircleAvatar(
                      radius: 50.r,
                      backgroundImage: AssetImage(AssetsResource.FarahPng),
                    ),
                    SizedBox(height: 10.h),
                    TextWidget(
                      text: 'أميرة محمود',
                      fontsize: 14.sp,
                      color: Colors.black,
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              TextWidget(
                                text: 'أطفالي',
                                color: ColorsManager.black,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Consumer<HomeViewModel>(
                              builder: (context, viewModel, child) {
                                return Row(
                                  children: [
                                    Row(children: viewModel.kids),
                                    UserAvatar(
                                      imagePath: AssetsResource.Kid_1_Png,
                                      name: '',
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  AddNewChildView(),
                                            ));
                                      },
                                      isAddButton: true,
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            ListView(
              padding: EdgeInsets.all(10),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileInfoView(),
                        ));
                  },
                  child: ListTile(
                    leading: SvgPicture.asset(AssetsResource.EditSVG),
                    title: TextWidget(
                      text: 'معلومات الحساب',
                      color: Colors.black,
                      fontsize: 12.sp,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: ColorsManager.grey,
                    ),
                  ),
                ),
                Divider(
                  indent: 40.w,
                  endIndent: 20.w,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AdressesView(),
                        ));
                  },
                  child: ListTile(
                    leading: SvgPicture.asset(AssetsResource.LocationSVG),
                    title: TextWidget(
                      text: 'العناوين',
                      color: Colors.black,
                      fontsize: 12.sp,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: ColorsManager.grey,
                    ),
                  ),
                ),
                Divider(
                  indent: 40.w,
                  endIndent: 20.w,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FawaterView(),
                        ));
                  },
                  child: ListTile(
                    leading: SvgPicture.asset(AssetsResource.FawaterSVG),
                    title: TextWidget(
                      text: 'الفواتير',
                      color: Colors.black,
                      fontsize: 12.sp,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: ColorsManager.grey,
                    ),
                  ),
                ),
                Divider(
                  indent: 40.w,
                  endIndent: 20.w,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FAQView(),
                        ));
                  },
                  child: ListTile(
                    leading: SvgPicture.asset(AssetsResource.FAQSVG),
                    title: TextWidget(
                      text: 'الأسئلة الشائعة',
                      color: Colors.black,
                      fontsize: 12.sp,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: ColorsManager.grey,
                    ),
                  ),
                ),
                Divider(
                  indent: 40.w,
                  endIndent: 20.w,
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => WhoWeAreBottomSheet(),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16.0.r)),
                      ),
                      isScrollControlled: true,
                    );
                  },
                  child: ListTile(
                    leading: SvgPicture.asset(AssetsResource.PrimaryLogoColor),
                    title: TextWidget(
                      text: 'من نحن',
                      color: Colors.black,
                      fontsize: 12.sp,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: ColorsManager.grey,
                    ),
                  ),
                ),
                Divider(
                  indent: 40.w,
                  endIndent: 20.w,
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => ContactBottomSheet(),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16.0.r)),
                      ),
                      isScrollControlled: true,
                    );
                  },
                  child: ListTile(
                    leading: SvgPicture.asset(AssetsResource.CallSVG),
                    title: TextWidget(
                      text: 'تواصل معنا',
                      color: Colors.black,
                      fontsize: 12.sp,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: ColorsManager.grey,
                    ),
                  ),
                ),
                Divider(
                  indent: 40.w,
                  endIndent: 20.w,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PolicesView(),
                        ));
                  },
                  child: ListTile(
                    leading: SvgPicture.asset(AssetsResource.LockSVG),
                    title: TextWidget(
                      text: 'الشروط والأحكام',
                      color: Colors.black,
                      fontsize: 12.sp,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: ColorsManager.grey,
                    ),
                  ),
                ),
                Divider(
                  indent: 40.w,
                  endIndent: 20.w,
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => DeleteBottomSheet(
                          message: "هل تود تسجيل الخروج ؟",
                          redButtonText: "نعم",
                          whiteButtonText: "لا, رجوع"),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16.0)),
                      ),
                      isScrollControlled: true,
                    );
                  },
                  child: ListTile(
                    leading: SvgPicture.asset(AssetsResource.LogoutSVG),
                    title: TextWidget(
                      text: 'تسجيل الخروج',
                      color: Colors.red,
                      fontsize: 12.sp,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: ColorsManager.grey,
                    ),
                  ),
                ),
                Divider(
                  indent: 40.w,
                  endIndent: 20.w,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
