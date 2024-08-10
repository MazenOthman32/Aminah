import 'dart:async';
import 'package:amina/View/Tameneni/Chat/chat_list_view.dart';
import 'package:amina/View/Tameneni/Notification/notification_view.dart';
import 'package:amina/View/home/Offers/offer_section_view.dart';
import 'package:amina/View/home/Order/BabySitter_Order/babysitter_request_form_view.dart';
import 'package:amina/View/home/Add_New_child/add_new_child.dart';
import 'package:amina/View/home/Profile/profie_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../Resources/assets_resources.dart';
import '../../Resources/color_resources.dart';
import '../../Resources/string_resources.dart';
import '../../Reusable_components/Buttons/small_Icon_button.dart';
import '../../Reusable_components/Items/number_of_offers.dart';
import '../../Reusable_components/Cards/order_card.dart';

import '../../Reusable_components/Helper_Widgets/text_widget.dart';
import '../../Reusable_components/Items/user_avatar.dart';
import '../../View_model/order_card_view_model.dart';
import '../../View_model/home_view_model.dart';
import 'Order/Home_Nursery/home_nursery_form_view.dart';
import 'location_check_card.dart';
import 'Offers/offer_list_view.dart';
import 'Order/order_list_view.dart';

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

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeViewModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileView(),
                    )),
                child: Image.asset(
                  AssetsResource.User_Png,
                  height: 45.h,
                  width: 45.w,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              TextWidget(
                text: StringsManager.Hi_User,
                color: ColorsManager.black,
              ),
            ],
          ),
          actions: [
            SmallIconButton(
              iconAsset: AssetsResource.MessageSVG,
              iconCount: 2,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatListView(),
                    ));
              },
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: SmallIconButton(
                iconAsset: AssetsResource.NotificationSVG,
                iconCount: 0,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationListView(),
                    ),
                  );
                },
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
                    width: 15.w,
                  ),
                  TextWidget(
                    text: 'أطفالي',
                    color: ColorsManager.black,
                    fontsize: 16.sp,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.0.w),
                child: SingleChildScrollView(
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
                                    builder: (context) => AddNewChildView(),
                                  ));
                            },
                            isAddButton: true,
                          ),
                        ],
                      );
                    },
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
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OfferSectionView(),
                          ));
                    },
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
                        viewModel: OrderCardViewModel(
                          imagePath: AssetsResource.FirstOnBoardingSVG,
                          buttonText: StringsManager.OrderButton1,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BabysitterRequestForm(),
                              ),
                            );
                          },
                        ),
                      ),
                      OrderCard(
                        viewModel: OrderCardViewModel(
                          imagePath: AssetsResource.ThirdOnBoardingSVG,
                          buttonText: StringsManager.OrderButton2,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeNurseryFormView(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.w,
                  vertical: 15.h,
                ),
                child: TextWidget(
                  text: 'تتبع طلبات اليوم',
                  fontsize: 16.sp,
                  color: ColorsManager.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                child: SizedBox(
                  child: DayOrderListView(),
                  width: 400.w,
                  height: 210.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
