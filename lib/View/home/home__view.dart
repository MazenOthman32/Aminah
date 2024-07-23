import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Resources/string_resources.dart';
import 'package:amina/Reusable_components/small_Icon_button.dart';
import 'package:amina/Reusable_components/user_avatar.dart';
import 'package:amina/View/home/location_check_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../Reusable_components/text_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              width: 10.w,
            ),
            Image.asset(
              AssetsResource.User_Png,
              height: 45.h,
              width: 45.w,
            ),
            SizedBox(
              width: 10.w,
            ),
            TextWidget(
              text: StringsManager.Hi_User,
              color: ColorsManager.black,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: SmallIconButton(
              iconAsset: AssetsResource.MessageSVG,
              iconCount: 2,
              onTap: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: SmallIconButton(
              iconAsset: AssetsResource.NotificationSVG,
              iconCount: 0,
              onTap: () {},
            ),
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: UserAvatar(
          imagePath: AssetsResource.Kid_1_Png,
          name: 'Amir',
          isAddButton: false,
        ),
      ),
      bottomSheet: LocationCheckCard(),
    );
  }
}
