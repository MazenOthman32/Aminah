import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Resources/font_resources.dart';
import 'package:amina/Resources/string_resources.dart';
import 'package:amina/View/home/home__view.dart';
import 'package:amina/View/home/info_view.dart';
import 'package:amina/View/home/my_wallet_view.dart';
import 'package:amina/View/home/order_view.dart';
import 'package:amina/View/home/profie_view.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarView extends StatefulWidget {
  const BottomNavBarView({super.key});

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List Screens = [
      HomeView(),
      ProfileView(),
      OrderView(),
      WalletView(),
      InfoView(),
    ];
    return Scaffold(
      body: Screens[_selectedIndex],
      bottomNavigationBar: ConvexAppBar(
        shadowColor: ColorsManager.grey,
        style: TabStyle.fixedCircle,
        backgroundColor: ColorsManager.white,
        color: ColorsManager.grey,
        activeColor: ColorsManager.primary,
        height: 60.h,
        items: [
          TabItem(
            icon: SvgPicture.asset(AssetsResource.UnSelectedHomeSVG),
            activeIcon: SvgPicture.asset(AssetsResource.SelectedHomeSVG),
            title: StringsManager.HomeNavBarIcon,
            fontFamily: FontResources.fontFamily,
          ),
          TabItem(
            icon: SvgPicture.asset(AssetsResource.UnSelectedTalabatySVG),
            activeIcon: SvgPicture.asset(AssetsResource.SelectedTalabatySVG),
            title: StringsManager.TalabatyNavBarIcon,
          ),
          TabItem(
            icon: Container(
              decoration: BoxDecoration(
                color: ColorsManager.white,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(AssetsResource.UnSelectedFrameSVG),
            ),
            activeIcon: SvgPicture.asset(AssetsResource.SelectedFrameSVG),
          ),
          TabItem(
            icon: SvgPicture.asset(AssetsResource.UnSelectedWalletSVG),
            activeIcon: SvgPicture.asset(AssetsResource.SelectedWalletSVG),
            title: StringsManager.WalletNavBarIcon,
          ),
          TabItem(
            icon: SvgPicture.asset(AssetsResource.UnSelectedProfileSVG),
            activeIcon: SvgPicture.asset(AssetsResource.SelectedProfileSVG),
            title: StringsManager.ProfileNavBarIcon,
          ),
        ],
        initialActiveIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
