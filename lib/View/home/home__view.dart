import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Resources/assets_resources.dart';
import '../../Resources/color_resources.dart';
import '../../Resources/string_resources.dart';
import '../../Reusable_components/number_of_offers.dart';
import '../../Reusable_components/order_card.dart';
import '../../Reusable_components/small_Icon_button.dart';
import '../../Reusable_components/text_widget.dart';
import '../../Reusable_components/user_avatar.dart';
import 'location_check_card.dart';
import 'offer_list_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () => showModalBottomSheet(
        context: context,
        builder: (context) {
          return LocationCheckCard();
        },
      ),
    );
  }

  List<UserAvatar> kids = [
    UserAvatar(
      imagePath: AssetsResource.Kid_1_Png,
      name: 'أمير',
    ),
    UserAvatar(
      imagePath: AssetsResource.Kid_2_Png,
      name: 'سليم',
    ),
    UserAvatar(
      imagePath: AssetsResource.Kid_3_Png,
      name: 'فريدة',
    ),
    UserAvatar(
      imagePath: AssetsResource.Kid_4_Png,
      name: 'مالك',
    ),
  ];

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30.w,
                ),
                TextWidget(
                  text: 'أطفالي',
                  color: ColorsManager.black,
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Row(children: kids),
                    Row(
                      children: [
                        UserAvatar(
                          imagePath: AssetsResource.Kid_1_Png,
                          name: '',
                          isAddButton: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              child: OfferListView(),
              width: double.infinity,
              height: 200.h,
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                child: OfferButton(
                  numberOfOffers: 4,
                  onTap: () {},
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.w, top: 10.h),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    OrderCard(
                      onPressed: () {},
                      imagePath: AssetsResource.FirstOnBoardingSVG,
                      buttonText: StringsManager.OrderButton1,
                    ),
                    OrderCard(
                      onPressed: () {},
                      imagePath: AssetsResource.ThirdOnBoardingSVG,
                      buttonText: StringsManager.OrderButton2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
