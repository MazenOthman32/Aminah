import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../Resources/assets_resources.dart';
import '../../Resources/color_resources.dart';
import '../../Resources/string_resources.dart';
import '../../Reusable_components/number_of_offers.dart';
import '../../Reusable_components/order_card.dart';
import '../../Reusable_components/small_icon_button.dart';
import '../../Reusable_components/text_widget.dart';
import '../../Reusable_components/user_avatar.dart';
import '../../View_model/order_card_view_model.dart';
import '../../View_model/home_view_model.dart';
import 'location_check_card.dart';
import 'offer_list_view.dart';
import 'order_list_view.dart';

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
            SmallIconButton(
              iconAsset: AssetsResource.MessageSVG,
              iconCount: 2,
              onTap: () {},
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
                        viewModel: OrderCardViewModel(
                          imagePath: AssetsResource.SecondOnBoardingSVG,
                          buttonText: StringsManager.OrderButton2,
                          onPressed: () {},
                        ),
                      ),
                      OrderCard(
                        viewModel: OrderCardViewModel(
                          imagePath: AssetsResource.ThirdOnBoardingSVG,
                          buttonText: StringsManager.OrderButton2,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.w),
                child: TextWidget(
                  text: 'تتبع طلبات اليوم',
                  color: ColorsManager.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0.r),
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
