import 'package:amina/Resources/assets_resources.dart';
import 'package:amina/Resources/color_resources.dart';
import 'package:amina/Resources/font_resources.dart';
import 'package:amina/Resources/string_resources.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../View_model/bottom_navbar_view_model.dart';

class BottomNavBarView extends StatelessWidget {
  const BottomNavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BottomNavBarViewModel(),
      child: Consumer<BottomNavBarViewModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            body: viewModel.screens[viewModel.selectedIndex],
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
                  activeIcon:
                      SvgPicture.asset(AssetsResource.SelectedTalabatySVG),
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
                  activeIcon:
                      SvgPicture.asset(AssetsResource.SelectedWalletSVG),
                  title: StringsManager.WalletNavBarIcon,
                ),
                TabItem(
                  icon: SvgPicture.asset(AssetsResource.UnSelectedProfileSVG),
                  activeIcon:
                      SvgPicture.asset(AssetsResource.SelectedProfileSVG),
                  title: StringsManager.ProfileNavBarIcon,
                ),
              ],
              initialActiveIndex: viewModel.selectedIndex,
              onTap: viewModel.onItemTapped,
            ),
          );
        },
      ),
    );
  }
}
